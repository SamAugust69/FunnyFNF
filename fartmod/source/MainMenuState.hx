package;

import Controls.KeyboardScheme;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import io.newgrounds.NG;
import lime.app.Application;

#if windows
import Discord.DiscordClient;
#end

using StringTools;

class MainMenuState extends MusicBeatState
{
	var curSelected:Int = 0;

	var menuItems:FlxTypedGroup<FlxSprite>;

	#if !switch
	var optionShit:Array<String> = ['fart', 'reset'];
	#else
	var optionShit:Array<String> = ['story mode', 'freeplay'];
	#end

	var newGaming:FlxText;
	var newGaming2:FlxText;
	var newInput:Bool = true;

	public static var nightly:String = "";

	public static var kadeEngineVer:String = "1" + nightly;
	public static var gameVer:String = "0.2.7.1";

	var camFollow:FlxObject;


	public var fartAmount:Int = 0;
	public var timeOtimes:String = "Time";
	var fartText:FlxText;
	var brown:FlxSprite;
	var bg:FlxSprite;

	override function create()
	{
		fartAmount = FlxG.save.data.test;
		#if windows
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end

		if (!FlxG.sound.music.playing)
		{
			FlxG.sound.playMusic(Paths.music('freakyMenu'));
		}

		persistentUpdate = persistentDraw = true;

		bg = new FlxSprite(-80).loadGraphic(Paths.image('menuDesat'));
		bg.scrollFactor.x = 0;
		bg.scrollFactor.y = 0.15;
		bg.setGraphicSize(Std.int(bg.width * 1.1));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = true;
		bg.color = 0xfde871;
		add(bg);

		camFollow = new FlxObject(0, 0, 1, 1);
		add(camFollow);

		brown = new FlxSprite(-80).loadGraphic(Paths.image('menuDesat'));
		brown.scrollFactor.x = 0;
		brown.scrollFactor.y = 0.18;
		brown.setGraphicSize(Std.int(brown.width * 1.1));
		brown.updateHitbox();
		brown.screenCenter();
		brown.visible = false;
		brown.antialiasing = true;
		brown.color = 0x1459319;
		add(brown);
		// magenta.scrollFactor.set();

		menuItems = new FlxTypedGroup<FlxSprite>();
		add(menuItems);

		var tex = Paths.getSparrowAtlas('FNF_main_menu_assets');

		for (i in 0...optionShit.length)
		{
			var menuItem:FlxSprite = new FlxSprite(0, 60 + (i * 160));
			menuItem.frames = tex;
			menuItem.animation.addByPrefix('idle', optionShit[i] + " basic", 24);
			menuItem.animation.addByPrefix('selected', optionShit[i] + " white", 24);
			menuItem.animation.play('idle');
			menuItem.ID = i;
			menuItem.screenCenter(X);
			menuItems.add(menuItem);
			menuItem.scrollFactor.set();
			menuItem.antialiasing = true;
		}

		FlxG.camera.follow(camFollow, null, 0.60 * (60 / FlxG.save.data.fpsCap));

		var versionShit:FlxText = new FlxText(5, FlxG.height - 18, 0, (Main.watermarks ? "Fart Engine v" + kadeEngineVer: ""), 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);
		fartText = new FlxText(5, FlxG.height - 32, 0, ("You've Farted " + fartAmount + " Times"), 12);
		fartText.scrollFactor.set();
		fartText.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(fartText);

		// NG.core.calls.event.logEvent('swag').send();


		if (FlxG.save.data.dfjk)
			controls.setKeyboardScheme(KeyboardScheme.Solo, true);
		else
			controls.setKeyboardScheme(KeyboardScheme.Duo(true), true);

		changeItem();

		super.create();
	}

	var selectedSomethin:Bool = false;

	override function update(elapsed:Float)
	{
		if (FlxG.sound.music.volume < 0.8)
		{
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
		}

		if (!selectedSomethin)
		{
			if (controls.UP_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				changeItem(-1);
			}

			if (controls.DOWN_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				changeItem(1);
			}

			if (controls.BACK)
			{
				FlxG.switchState(new TitleState());
			}
			if (fartAmount == 1)
			{
				timeOtimes = "Time";
				fartText.text = "You've Farted " + fartAmount + " " + timeOtimes;
			}
			if (controls.ACCEPT)
		 	{
				if (fartAmount == 1)
				{
					timeOtimes = "Times";
				} 
				else if (fartAmount == 250)
				{
					bg.color = 0xCA1414;
				} 
				else 
				{
					bg.color = 0xfde871;
				}
				if (optionShit[curSelected] == 'fart')
				{
			 		FlxG.sound.play(Paths.sound('oopsfarted'));
			 		FlxFlicker.flicker(brown, 1.1, 0.15, false);
		 			fartAmount = fartAmount + 1;
			 		fartText.text = "You've Farted " + fartAmount + " " + timeOtimes;
					FlxG.save.data.test = fartAmount;
			 		FlxG.save.flush();
			 		trace("nice fart homie");
			 	}
			 	else if (optionShit[curSelected] == 'reset')
			 	{
			 		FlxG.sound.play(Paths.sound('bruh'));
			 		fartAmount = 0;
			 		fartText.text = "You've Farted " + fartAmount + " " + timeOtimes;
			 		FlxG.save.data.test = fartAmount;
			 		FlxG.save.flush();
			 		trace("not an epic poggers moment if you ask me");
			 	}
			}
		}

		super.update(elapsed);

		menuItems.forEach(function(spr:FlxSprite)
		{
			spr.screenCenter(X);
		});
	}

	function changeItem(huh:Int = 0)
	{
		curSelected += huh;

		if (curSelected >= menuItems.length)
			curSelected = 0;
		if (curSelected < 0)
			curSelected = menuItems.length - 1;

		menuItems.forEach(function(spr:FlxSprite)
		{
			spr.animation.play('idle');

			if (spr.ID == curSelected)
			{
				spr.animation.play('selected');
				camFollow.setPosition(spr.getGraphicMidpoint().x, spr.getGraphicMidpoint().y);
			}

			spr.updateHitbox();
		});
	}
}
