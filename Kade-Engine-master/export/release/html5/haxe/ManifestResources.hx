package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["songs"] = rootPath + "manifest/songs.json";
		Assets.libraryPaths["shared"] = rootPath + "manifest/shared.json";
		Assets.libraryPaths["tutorial"] = rootPath + "manifest/tutorial.json";
		Assets.libraryPaths["week1"] = rootPath + "manifest/week1.json";
		Assets.libraryPaths["week2"] = rootPath + "manifest/week2.json";
		Assets.libraryPaths["week3"] = rootPath + "manifest/week3.json";
		Assets.libraryPaths["week4"] = rootPath + "manifest/week4.json";
		Assets.libraryPaths["week5"] = rootPath + "manifest/week5.json";
		Assets.libraryPaths["week6"] = rootPath + "manifest/week6.json";
		data = '{"name":null,"assets":"ah","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("week7", library);
		Assets.libraryPaths["week8"] = rootPath + "manifest/week8.json";
		Assets.libraryPaths["week9"] = rootPath + "manifest/week9.json";
		data = '{"name":null,"assets":"ah","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("week10", library);
		data = '{"name":null,"assets":"aoy4:pathy43:assets%2Fdata%2Fblammed%2Fblammed-easy.jsony4:sizei39025y4:typey4:TEXTy2:idR1y7:preloadtgoR0y43:assets%2Fdata%2Fblammed%2Fblammed-hard.jsonR2i53646R3R4R5R7R6tgoR0y38:assets%2Fdata%2Fblammed%2Fblammed.jsonR2i44638R3R4R5R8R6tgoR0y57:assets%2Fdata%2Fblammed-b-side%2Fblammed-b-side-easy.jsonR2i18620R3R4R5R9R6tgoR0y57:assets%2Fdata%2Fblammed-b-side%2Fblammed-b-side-hard.jsonR2i22648R3R4R5R10R6tgoR0y52:assets%2Fdata%2Fblammed-b-side%2Fblammed-b-side.jsonR2i22648R3R4R5R11R6tgoR0y43:assets%2Fdata%2Fbopeebo%2Fbopeebo-easy.jsonR2i6561R3R4R5R12R6tgoR0y43:assets%2Fdata%2Fbopeebo%2Fbopeebo-hard.jsonR2i6564R3R4R5R13R6tgoR0y38:assets%2Fdata%2Fbopeebo%2Fbopeebo.jsonR2i6561R3R4R5R14R6tgoR0y57:assets%2Fdata%2Fbopeebo-b-side%2Fbopeebo-b-side-easy.jsonR2i7360R3R4R5R15R6tgoR0y57:assets%2Fdata%2Fbopeebo-b-side%2Fbopeebo-b-side-hard.jsonR2i7747R3R4R5R16R6tgoR0y52:assets%2Fdata%2Fbopeebo-b-side%2Fbopeebo-b-side.jsonR2i7749R3R4R5R17R6tgoR0y53:assets%2Fdata%2Fboxing-match%2Fboxing-match-easy.jsonR2i394035R3R4R5R18R6tgoR0y53:assets%2Fdata%2Fboxing-match%2Fboxing-match-hard.jsonR2i111466R3R4R5R19R6tgoR0y48:assets%2Fdata%2Fboxing-match%2Fboxing-match.jsonR2i438688R3R4R5R20R6tgoR0y49:assets%2Fdata%2Fboxing-match%2FboxingDialogue.txtR2i269R3R4R5R21R6tgoR0y33:assets%2Fdata%2FcharacterList.txtR2i237R3R4R5R22R6tgoR0y39:assets%2Fdata%2Fcocoa%2Fcocoa-easy.jsonR2i27364R3R4R5R23R6tgoR0y39:assets%2Fdata%2Fcocoa%2Fcocoa-hard.jsonR2i22841R3R4R5R24R6tgoR0y34:assets%2Fdata%2Fcocoa%2Fcocoa.jsonR2i30208R3R4R5R25R6tgoR0y53:assets%2Fdata%2Fcocoa-b-side%2Fcocoa-b-side-easy.jsonR2i18320R3R4R5R26R6tgoR0y53:assets%2Fdata%2Fcocoa-b-side%2Fcocoa-b-side-hard.jsonR2i20030R3R4R5R27R6tgoR0y48:assets%2Fdata%2Fcocoa-b-side%2Fcocoa-b-side.jsonR2i20030R3R4R5R28R6tgoR0y28:assets%2Fdata%2Fcontrols.txtR2i355R3R4R5R29R6tgoR0y47:assets%2Fdata%2Fdadbattle%2Fdadbattle-easy.jsonR2i28153R3R4R5R30R6tgoR0y47:assets%2Fdata%2Fdadbattle%2Fdadbattle-hard.jsonR2i34945R3R4R5R31R6tgoR0y42:assets%2Fdata%2Fdadbattle%2Fdadbattle.jsonR2i30225R3R4R5R32R6tgoR0y61:assets%2Fdata%2Fdadbattle-b-side%2Fdadbattle-b-side-easy.jsonR2i16732R3R4R5R33R6tgoR0y61:assets%2Fdata%2Fdadbattle-b-side%2Fdadbattle-b-side-hard.jsonR2i17165R3R4R5R34R6tgoR0y56:assets%2Fdata%2Fdadbattle-b-side%2Fdadbattle-b-side.jsonR2i17165R3R4R5R35R6tgoR0y34:assets%2Fdata%2Fdata-goes-here.txtR2zR3R4R5R36R6tgoR0y41:assets%2Fdata%2Feggnog%2Feggnog-easy.jsonR2i32768R3R4R5R37R6tgoR0y41:assets%2Fdata%2Feggnog%2Feggnog-hard.jsonR2i146888R3R4R5R38R6tgoR0y36:assets%2Fdata%2Feggnog%2Feggnog.jsonR2i35674R3R4R5R39R6tgoR0y55:assets%2Fdata%2Feggnog-b-side%2Feggnog-b-side-easy.jsonR2i14502R3R4R5R40R6tgoR0y55:assets%2Fdata%2Feggnog-b-side%2Feggnog-b-side-hard.jsonR2i16913R3R4R5R41R6tgoR0y50:assets%2Fdata%2Feggnog-b-side%2Feggnog-b-side.jsonR2i16906R3R4R5R42R6tgoR0y41:assets%2Fdata%2Ffading%2Ffading-easy.jsonR2i19104R3R4R5R43R6tgoR0y41:assets%2Fdata%2Ffading%2Ffading-hard.jsonR2i18981R3R4R5R44R6tgoR0y36:assets%2Fdata%2Ffading%2Ffading.jsonR2i19104R3R4R5R45R6tgoR0y43:assets%2Fdata%2Ffading%2FfadingDialogue.txtR2i444R3R4R5R46R6tgoR0y47:assets%2Fdata%2Ffoolhardy%2Ffoolhardy-easy.jsonR2i49498R3R4R5R47R6tgoR0y47:assets%2Fdata%2Ffoolhardy%2Ffoolhardy-hard.jsonR2i49498R3R4R5R48R6tgoR0y42:assets%2Fdata%2Ffoolhardy%2Ffoolhardy.jsonR2i49498R3R4R5R49R6tgoR0y38:assets%2Fdata%2Ffoolhardy%2Fpoggin.txtR2i180R3R4R5R50R6tgoR0y36:assets%2Fdata%2FfreeplaySonglist.txtR2i1004R3R4R5R51R6tgoR0y39:assets%2Fdata%2Ffresh%2Ffresh-easy.jsonR2i17647R3R4R5R52R6tgoR0y39:assets%2Fdata%2Ffresh%2Ffresh-hard.jsonR2i19185R3R4R5R53R6tgoR0y34:assets%2Fdata%2Ffresh%2Ffresh.jsonR2i18849R3R4R5R54R6tgoR0y53:assets%2Fdata%2Ffresh-b-side%2Ffresh-b-side-easy.jsonR2i10675R3R4R5R55R6tgoR0y53:assets%2Fdata%2Ffresh-b-side%2Ffresh-b-side-hard.jsonR2i13287R3R4R5R56R6tgoR0y48:assets%2Fdata%2Ffresh-b-side%2Ffresh-b-side.jsonR2i13287R3R4R5R57R6tgoR0y45:assets%2Fdata%2Fheadache%2Fheadache-easy.jsonR2i26700R3R4R5R58R6tgoR0y45:assets%2Fdata%2Fheadache%2Fheadache-hard.jsonR2i14129R3R4R5R59R6tgoR0y40:assets%2Fdata%2Fheadache%2Fheadache.jsonR2i26561R3R4R5R60R6tgoR0y47:assets%2Fdata%2Fheadache%2FheadacheDialogue.txtR2i501R3R4R5R61R6tgoR0y37:assets%2Fdata%2Fhigh%2Fhigh-easy.jsonR2i34032R3R4R5R62R6tgoR0y37:assets%2Fdata%2Fhigh%2Fhigh-hard.jsonR2i26047R3R4R5R63R6tgoR0y32:assets%2Fdata%2Fhigh%2Fhigh.jsonR2i36383R3R4R5R64R6tgoR0y51:assets%2Fdata%2Fhigh-b-side%2Fhigh-b-side-easy.jsonR2i21769R3R4R5R65R6tgoR0y51:assets%2Fdata%2Fhigh-b-side%2Fhigh-b-side-hard.jsonR2i28733R3R4R5R66R6tgoR0y46:assets%2Fdata%2Fhigh-b-side%2Fhigh-b-side.jsonR2i28733R3R4R5R67R6tgoR0y55:assets%2Fdata%2Finkingmistake%2Finkingmistake-easy.jsonR2i77159R3R4R5R68R6tgoR0y55:assets%2Fdata%2Finkingmistake%2Finkingmistake-hard.jsonR2i47981R3R4R5R69R6tgoR0y50:assets%2Fdata%2Finkingmistake%2Finkingmistake.jsonR2i83952R3R4R5R70R6tgoR0y29:assets%2Fdata%2FintroText.txtR2i1301R3R4R5R71R6tgoR0y51:assets%2Fdata%2Flight-it-up%2Flight-it-up-easy.jsonR2i7374R3R4R5R72R6tgoR0y51:assets%2Fdata%2Flight-it-up%2Flight-it-up-hard.jsonR2i8852R3R4R5R73R6tgoR0y46:assets%2Fdata%2Flight-it-up%2Flight-it-up.jsonR2i8128R3R4R5R74R6tgoR0y47:assets%2Fdata%2Flight-it-up%2FlightDialogue.txtR2i92R3R4R5R75R6tgoR0y29:assets%2Fdata%2Fmain-view.xmlR2i125R3R4R5R76R6tgoR0y37:assets%2Fdata%2Fmilf%2Fmilf-easy.jsonR2i66246R3R4R5R77R6tgoR0y37:assets%2Fdata%2Fmilf%2Fmilf-hard.jsonR2i79053R3R4R5R78R6tgoR0y32:assets%2Fdata%2Fmilf%2Fmilf.jsonR2i70461R3R4R5R79R6tgoR0y51:assets%2Fdata%2Fmilf-b-side%2Fmilf-b-side-easy.jsonR2i34685R3R4R5R80R6tgoR0y51:assets%2Fdata%2Fmilf-b-side%2Fmilf-b-side-hard.jsonR2i41101R3R4R5R81R6tgoR0y46:assets%2Fdata%2Fmilf-b-side%2Fmilf-b-side.jsonR2i41100R3R4R5R82R6tgoR0y43:assets%2Fdata%2Fmonster%2Fmonster-easy.jsonR2i11977R3R4R5R83R6tgoR0y43:assets%2Fdata%2Fmonster%2Fmonster-hard.jsonR2i13965R3R4R5R84R6tgoR0y38:assets%2Fdata%2Fmonster%2Fmonster.jsonR2i13247R3R4R5R85R6tgoR0y41:assets%2Fdata%2Fnerves%2Fnerves-easy.jsonR2i11670R3R4R5R86R6tgoR0y41:assets%2Fdata%2Fnerves%2Fnerves-hard.jsonR2i22796R3R4R5R87R6tgoR0y36:assets%2Fdata%2Fnerves%2Fnerves.jsonR2i11670R3R4R5R88R6tgoR0y43:assets%2Fdata%2Fnerves%2FnervesDialogue.txtR2i367R3R4R5R89R6tgoR0y44:assets%2Fdata%2Foffsettest%2Foffsettest.jsonR2i5741R3R4R5R90R6tgoR0y47:assets%2Fdata%2Foverwrite%2Foverwrite-easy.jsonR2i36139R3R4R5R91R6tgoR0y47:assets%2Fdata%2Foverwrite%2Foverwrite-hard.jsonR2i42523R3R4R5R92R6tgoR0y42:assets%2Fdata%2Foverwrite%2Foverwrite.jsonR2i40915R3R4R5R93R6tgoR0y41:assets%2Fdata%2Fphilly%2Fphilly-easy.jsonR2i37684R3R4R5R94R6tgoR0y41:assets%2Fdata%2Fphilly%2Fphilly-hard.jsonR2i55578R3R4R5R95R6tgoR0y36:assets%2Fdata%2Fphilly%2Fphilly.jsonR2i44220R3R4R5R96R6tgoR0y55:assets%2Fdata%2Fphilly-b-side%2Fphilly-b-side-easy.jsonR2i25728R3R4R5R97R6tgoR0y55:assets%2Fdata%2Fphilly-b-side%2Fphilly-b-side-hard.jsonR2i28934R3R4R5R98R6tgoR0y50:assets%2Fdata%2Fphilly-b-side%2Fphilly-b-side.jsonR2i28934R3R4R5R99R6tgoR0y37:assets%2Fdata%2Fpico%2Fpico-easy.jsonR2i16714R3R4R5R100R6tgoR0y37:assets%2Fdata%2Fpico%2Fpico-hard.jsonR2i29577R3R4R5R101R6tgoR0y32:assets%2Fdata%2Fpico%2Fpico.jsonR2i27699R3R4R5R102R6tgoR0y51:assets%2Fdata%2Fpico-b-side%2Fpico-b-side-easy.jsonR2i15081R3R4R5R103R6tgoR0y51:assets%2Fdata%2Fpico-b-side%2Fpico-b-side-hard.jsonR2i19482R3R4R5R104R6tgoR0y46:assets%2Fdata%2Fpico-b-side%2Fpico-b-side.jsonR2i19482R3R4R5R105R6tgoR0y43:assets%2Fdata%2Frelease%2Frelease-easy.jsonR2i18663R3R4R5R106R6tgoR0y43:assets%2Fdata%2Frelease%2Frelease-hard.jsonR2i20639R3R4R5R107R6tgoR0y38:assets%2Fdata%2Frelease%2Frelease.jsonR2i18540R3R4R5R108R6tgoR0y45:assets%2Fdata%2Frelease%2FreleaseDialogue.txtR2i385R3R4R5R109R6tgoR0y34:assets%2Fdata%2Fridge%2Fridge.jsonR2i34473R3R4R5R110R6tgoR0y39:assets%2Fdata%2Froses%2Froses-easy.jsonR2i27016R3R4R5R111R6tgoR0y39:assets%2Fdata%2Froses%2Froses-hard.jsonR2i34216R3R4R5R112R6tgoR0y34:assets%2Fdata%2Froses%2Froses.jsonR2i31159R3R4R5R113R6tgoR0y41:assets%2Fdata%2Froses%2FrosesDialogue.txtR2i155R3R4R5R114R6tgoR0y53:assets%2Fdata%2Froses-b-side%2Froses-b-side-easy.jsonR2i16194R3R4R5R115R6tgoR0y53:assets%2Fdata%2Froses-b-side%2Froses-b-side-hard.jsonR2i21956R3R4R5R116R6tgoR0y48:assets%2Fdata%2Froses-b-side%2Froses-b-side.jsonR2i21957R3R4R5R117R6tgoR0y48:assets%2Fdata%2Froses-b-side%2FrosesDialogue.txtR2i182R3R4R5R118R6tgoR0y41:assets%2Fdata%2Fruckus%2Fruckus-easy.jsonR2i61052R3R4R5R119R6tgoR0y41:assets%2Fdata%2Fruckus%2Fruckus-hard.jsonR2i67989R3R4R5R120R6tgoR0y36:assets%2Fdata%2Fruckus%2Fruckus.jsonR2i64235R3R4R5R121R6tgoR0y55:assets%2Fdata%2Fsatin-panties%2Fsatin-panties-easy.jsonR2i41066R3R4R5R122R6tgoR0y55:assets%2Fdata%2Fsatin-panties%2Fsatin-panties-hard.jsonR2i54488R3R4R5R123R6tgoR0y50:assets%2Fdata%2Fsatin-panties%2Fsatin-panties.jsonR2i47192R3R4R5R124R6tgoR0y69:assets%2Fdata%2Fsatin-panties-b-side%2Fsatin-panties-b-side-easy.jsonR2i15067R3R4R5R125R6tgoR0y69:assets%2Fdata%2Fsatin-panties-b-side%2Fsatin-panties-b-side-hard.jsonR2i21370R3R4R5R126R6tgoR0y64:assets%2Fdata%2Fsatin-panties-b-side%2Fsatin-panties-b-side.jsonR2i21370R3R4R5R127R6tgoR0y41:assets%2Fdata%2Fsenpai%2Fsenpai-easy.jsonR2i45928R3R4R5R128R6tgoR0y41:assets%2Fdata%2Fsenpai%2Fsenpai-hard.jsonR2i51861R3R4R5R129R6tgoR0y36:assets%2Fdata%2Fsenpai%2Fsenpai.jsonR2i49335R3R4R5R130R6tgoR0y43:assets%2Fdata%2Fsenpai%2FsenpaiDialogue.txtR2i164R3R4R5R131R6tgoR0y55:assets%2Fdata%2Fsenpai-b-side%2Fsenpai-b-side-easy.jsonR2i18318R3R4R5R132R6tgoR0y55:assets%2Fdata%2Fsenpai-b-side%2Fsenpai-b-side-hard.jsonR2i19463R3R4R5R133R6tgoR0y50:assets%2Fdata%2Fsenpai-b-side%2Fsenpai-b-side.jsonR2i19463R3R4R5R134R6tgoR0y50:assets%2Fdata%2Fsenpai-b-side%2FsenpaiDialogue.txtR2i203R3R4R5R135R6tgoR0y34:assets%2Fdata%2Fsmash%2Fsmash.jsonR2i154R3R4R5R136R6tgoR0y39:assets%2Fdata%2Fsouth%2Fsouth-easy.jsonR2i30048R3R4R5R137R6tgoR0y39:assets%2Fdata%2Fsouth%2Fsouth-hard.jsonR2i34392R3R4R5R138R6tgoR0y34:assets%2Fdata%2Fsouth%2Fsouth.jsonR2i22240R3R4R5R139R6tgoR0y53:assets%2Fdata%2Fsouth-b-side%2Fsouth-b-side-easy.jsonR2i17733R3R4R5R140R6tgoR0y53:assets%2Fdata%2Fsouth-b-side%2Fsouth-b-side-hard.jsonR2i18841R3R4R5R141R6tgoR0y48:assets%2Fdata%2Fsouth-b-side%2Fsouth-b-side.jsonR2i18841R3R4R5R142R6tgoR0y33:assets%2Fdata%2FspecialThanks.txtR2i322R3R4R5R143R6tgoR0y45:assets%2Fdata%2Fspookeez%2Fspookeez-easy.jsonR2i28639R3R4R5R144R6tgoR0y45:assets%2Fdata%2Fspookeez%2Fspookeez-hard.jsonR2i32667R3R4R5R145R6tgoR0y40:assets%2Fdata%2Fspookeez%2Fspookeez.jsonR2i30435R3R4R5R146R6tgoR0y59:assets%2Fdata%2Fspookeez-b-side%2Fspookeez-b-side-easy.jsonR2i16474R3R4R5R147R6tgoR0y59:assets%2Fdata%2Fspookeez-b-side%2Fspookeez-b-side-hard.jsonR2i20819R3R4R5R148R6tgoR0y54:assets%2Fdata%2Fspookeez-b-side%2Fspookeez-b-side.jsonR2i20819R3R4R5R149R6tgoR0y45:assets%2Fdata%2Fsporting%2Fsporting-easy.jsonR2i359586R3R4R5R150R6tgoR0y45:assets%2Fdata%2Fsporting%2Fsporting-hard.jsonR2i444960R3R4R5R151R6tgoR0y40:assets%2Fdata%2Fsporting%2Fsporting.jsonR2i401122R3R4R5R152R6tgoR0y47:assets%2Fdata%2Fsporting%2FsportingDialogue.txtR2i308R3R4R5R153R6tgoR0y59:assets%2Fdata%2Ftarget-practice%2Ftarget-practice-easy.jsonR2i54860R3R4R5R154R6tgoR0y59:assets%2Fdata%2Ftarget-practice%2Ftarget-practice-hard.jsonR2i61022R3R4R5R155R6tgoR0y54:assets%2Fdata%2Ftarget-practice%2Ftarget-practice.jsonR2i54858R3R4R5R156R6tgoR0y41:assets%2Fdata%2Fthorns%2Fthorns-easy.jsonR2i80225R3R4R5R157R6tgoR0y41:assets%2Fdata%2Fthorns%2Fthorns-hard.jsonR2i71799R3R4R5R158R6tgoR0y36:assets%2Fdata%2Fthorns%2Fthorns.jsonR2i60997R3R4R5R159R6tgoR0y43:assets%2Fdata%2Fthorns%2FthornsDialogue.txtR2i309R3R4R5R160R6tgoR0y55:assets%2Fdata%2Fthorns-b-side%2Fthorns-b-side-easy.jsonR2i26073R3R4R5R161R6tgoR0y55:assets%2Fdata%2Fthorns-b-side%2Fthorns-b-side-hard.jsonR2i29126R3R4R5R162R6tgoR0y50:assets%2Fdata%2Fthorns-b-side%2Fthorns-b-side.jsonR2i29126R3R4R5R163R6tgoR0y50:assets%2Fdata%2Fthorns-b-side%2FthornsDialogue.txtR2i306R3R4R5R164R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-easy.jsonR2i5739R3R4R5R165R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-hard.jsonR2i9504R3R4R5R166R6tgoR0y40:assets%2Fdata%2Ftutorial%2Ftutorial.jsonR2i5739R3R4R5R167R6tgoR0y63:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland-easy.jsonR2i137984R3R4R5R168R6tgoR0y63:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland-hard.jsonR2i177925R3R4R5R169R6tgoR0y58:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland.jsonR2i154340R3R4R5R170R6tgoR0y77:assets%2Fdata%2Fwinter-horrorland-b-side%2Fwinter-horrorland-b-side-easy.jsonR2i23734R3R4R5R171R6tgoR0y77:assets%2Fdata%2Fwinter-horrorland-b-side%2Fwinter-horrorland-b-side-hard.jsonR2i24545R3R4R5R172R6tgoR0y72:assets%2Fdata%2Fwinter-horrorland-b-side%2Fwinter-horrorland-b-side.jsonR2i24545R3R4R5R173R6tgoR0y30:assets%2Fimages%2Falphabet.pngR2i139836R3y5:IMAGER5R174R6tgoR0y30:assets%2Fimages%2Falphabet.xmlR2i39574R3R4R5R176R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.pngR2i27171R3R175R5R177R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.xmlR2i1920R3R4R5R178R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.pngR2i2404944R3R175R5R179R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.xmlR2i24575R3R4R5R180R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.pngR2i281298R3R175R5R181R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.xmlR2i4808R3R4R5R182R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.pngR2i1221436R3R175R5R183R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.xmlR2i4294R3R4R5R184R6tgoR0y30:assets%2Fimages%2FiconGrid.pngR2i307390R3R175R5R185R6tgoR0y26:assets%2Fimages%2Flogo.pngR2i86924R3R175R5R186R6tgoR0y32:assets%2Fimages%2FlogoBumpin.pngR2i592724R3R175R5R187R6tgoR0y32:assets%2Fimages%2FlogoBumpin.xmlR2i2197R3R4R5R188R6tgoR0y28:assets%2Fimages%2FmenuBG.pngR2i620342R3R175R5R189R6tgoR0y32:assets%2Fimages%2FmenuBGBlue.pngR2i614586R3R175R5R190R6tgoR0y35:assets%2Fimages%2FmenuBGMagenta.pngR2i553468R3R175R5R191R6tgoR0y31:assets%2Fimages%2FmenuDesat.pngR2i357911R3R175R5R192R6tgoR0y37:assets%2Fimages%2Fnewgrounds_logo.pngR2i57747R3R175R5R193R6tgoR0y26:assets%2Fimages%2Fnum0.pngR2i3738R3R175R5R194R6tgoR0y26:assets%2Fimages%2Fnum1.pngR2i3390R3R175R5R195R6tgoR0y26:assets%2Fimages%2Fnum2.pngR2i3990R3R175R5R196R6tgoR0y26:assets%2Fimages%2Fnum3.pngR2i4022R3R175R5R197R6tgoR0y26:assets%2Fimages%2Fnum4.pngR2i3989R3R175R5R198R6tgoR0y26:assets%2Fimages%2Fnum5.pngR2i4113R3R175R5R199R6tgoR0y26:assets%2Fimages%2Fnum6.pngR2i4181R3R175R5R200R6tgoR0y26:assets%2Fimages%2Fnum7.pngR2i3692R3R175R5R201R6tgoR0y26:assets%2Fimages%2Fnum8.pngR2i3914R3R175R5R202R6tgoR0y26:assets%2Fimages%2Fnum9.pngR2i3687R3R175R5R203R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek0.pngR2i7056R3R175R5R204R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek1.pngR2i6261R3R175R5R205R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek2.pngR2i6517R3R175R5R206R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek3.pngR2i7148R3R175R5R207R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek4.pngR2i6262R3R175R5R208R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek5.pngR2i6440R3R175R5R209R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek6.pngR2i6998R3R175R5R210R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek7.pngR2i7677R3R175R5R211R6tgoR0y32:assets%2Fimages%2FtitleEnter.pngR2i1449202R3R175R5R212R6tgoR0y32:assets%2Fimages%2FtitleEnter.xmlR2i4934R3R4R5R213R6tgoR2i2309657R3y5:MUSICR5y31:assets%2Fmusic%2FfreakyMenu.mp3y9:pathGroupaR215hR6tgoR2i17762R3R214R5y32:assets%2Fsounds%2FcancelMenu.mp3R216aR217hR6tgoR2i91950R3R214R5y33:assets%2Fsounds%2FconfirmMenu.mp3R216aR218hR6tgoR2i200093R3R214R5y32:assets%2Fsounds%2Foopsfarted.mp3R216aR219hR6tgoR2i17762R3R214R5y32:assets%2Fsounds%2FscrollMenu.mp3R216aR220hR6tgoR0y48:mods%2FintroMod%2F_append%2Fdata%2FintroText.txtR2i20R3R4R5R221goR0y18:mods%2FmodList.txtR2i8R3R4R5R222goR0y17:mods%2Freadme.txtR2i91R3R4R5R223goR0y21:do%20NOT%20readme.txtR2i4417R3R4R5R224R6tgoR0y13:changelog.txtR2i4606R3R4R5R225R6tgoR0y34:assets%2Ffonts%2Ffonts-go-here.txtR2zR3R4R5R226R6tgoR2i14656R3y4:FONTy9:classNamey31:__ASSET__assets_fonts_pixel_otfR5y26:assets%2Ffonts%2Fpixel.otfR6tgoR2i75864R3R227R228y29:__ASSET__assets_fonts_vcr_ttfR5y24:assets%2Ffonts%2Fvcr.ttfR6tgoR2i2114R3R214R5y26:flixel%2Fsounds%2Fbeep.mp3R216aR233y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R214R5y28:flixel%2Fsounds%2Fflixel.mp3R216aR235y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R234R216aR233R234hgoR2i33629R3R237R5R236R216aR235R236hgoR2i15744R3R227R228y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R227R228y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R175R5R242R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R175R5R243R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR2i912R3R175R5R244R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR2i433R3R175R5R245R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR2i446R3R175R5R246R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR2i459R3R175R5R247R6tgoR0y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR2i511R3R175R5R248R6tgoR0y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR2i493R3R175R5R249R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR2i247R3R175R5R250R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR2i534R3R175R5R251R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR2i922R3R175R5R252R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR2i946R3R175R5R253R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR2i253R3R175R5R254R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR2i212R3R175R5R255R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR2i192R3R175R5R256R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR2i214R3R175R5R257R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR2i156R3R175R5R258R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR2i1724R3R175R5R259R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR2i294R3R175R5R260R6tgoR0y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR2i129R3R175R5R261R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR2i128R3R175R5R262R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR2i136R3R175R5R263R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR2i147R3R175R5R264R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR2i191R3R175R5R265R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR2i153R3R175R5R266R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR2i185R3R175R5R267R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR2i201R3R175R5R268R6tgoR0y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR2i210R3R175R5R269R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR2i18509R3R175R5R270R6tgoR0y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR2i1263R3R4R5R271R6tgoR0y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR2i1953R3R4R5R272R6tgoR0y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR2i1848R3R4R5R273R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("week10");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("week10");
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_b_side_blammed_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_b_side_blammed_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_b_side_blammed_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_b_side_bopeebo_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_b_side_bopeebo_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_b_side_bopeebo_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_boxing_match_boxing_match_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_boxing_match_boxing_match_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_boxing_match_boxing_match_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_boxing_match_boxingdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_b_side_cocoa_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_b_side_cocoa_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_b_side_cocoa_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_b_side_dadbattle_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_b_side_dadbattle_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_b_side_dadbattle_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_b_side_eggnog_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_b_side_eggnog_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_b_side_eggnog_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fading_fading_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fading_fading_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fading_fading_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fading_fadingdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_foolhardy_foolhardy_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_foolhardy_foolhardy_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_foolhardy_foolhardy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_foolhardy_poggin_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_b_side_fresh_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_b_side_fresh_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_b_side_fresh_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_headache_headache_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_headache_headache_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_headache_headache_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_headache_headachedialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_b_side_high_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_b_side_high_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_b_side_high_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_inkingmistake_inkingmistake_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_inkingmistake_inkingmistake_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_inkingmistake_inkingmistake_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_light_it_up_light_it_up_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_light_it_up_light_it_up_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_light_it_up_light_it_up_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_light_it_up_lightdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_b_side_milf_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_b_side_milf_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_b_side_milf_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_nerves_nerves_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_nerves_nerves_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_nerves_nerves_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_nerves_nervesdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_offsettest_offsettest_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_overwrite_overwrite_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_overwrite_overwrite_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_overwrite_overwrite_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_b_side_philly_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_b_side_philly_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_b_side_philly_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_b_side_pico_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_b_side_pico_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_b_side_pico_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_release_release_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_release_release_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_release_release_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_release_releasedialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_rosesdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_b_side_roses_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_b_side_roses_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_b_side_roses_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_b_side_rosesdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ruckus_ruckus_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ruckus_ruckus_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ruckus_ruckus_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_b_side_satin_panties_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_b_side_satin_panties_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_b_side_satin_panties_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpaidialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_b_side_senpai_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_b_side_senpai_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_b_side_senpai_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_b_side_senpaidialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_smash_smash_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_b_side_south_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_b_side_south_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_b_side_south_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_b_side_spookeez_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_b_side_spookeez_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_b_side_spookeez_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sporting_sporting_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sporting_sporting_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sporting_sporting_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sporting_sportingdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_target_practice_target_practice_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_target_practice_target_practice_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_target_practice_target_practice_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thornsdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_b_side_thorns_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_b_side_thorns_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_b_side_thorns_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_b_side_thornsdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_b_side_winter_horrorland_b_side_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_b_side_winter_horrorland_b_side_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_b_side_winter_horrorland_b_side_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_oopsfarted_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_boxing_match_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_boxing_match_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fading_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fading_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_foolhardy_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_foolhardy_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_headache_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_headache_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_inkingmistake_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_inkingmistake_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_light_it_up_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_light_it_up_lightdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_light_it_up_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_nerves_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_nerves_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_offsettest_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_overwrite_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_overwrite_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_release_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_release_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ruckus_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ruckus_ruckusdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ruckus_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_sporting_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_sporting_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_target_practice_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_target_practice_ruckusdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_target_practice_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_b_side_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_b_side_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_foolhardy_images_maze_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_foolhardy_images_maze_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_foolhardy_zardy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_foolhardy_zardy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcellodead_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcellodead_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcelloghosty_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcelloghosty_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcellotired_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcellotired_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcello_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcello_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_gardead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garsmoke_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garsmoke_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garstage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garstagealt_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garstagebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garstagebgalt_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_bf_wii_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_bf_wii_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_images_boxingnight1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_images_boxingnight2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_images_boxingnight3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_images_swordfight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_mattmad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_mattmad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_matt_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_matt_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_fg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_ground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_note_xevent_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_note_xevent_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_overwrite_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_overwrite_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_ink_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_ink_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_xchara_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_xchara_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tutorial_tutorial_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_week1_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_monster_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_monster_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_spooky_kids_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_spooky_kids_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_week2_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_behindtrain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_city_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_street_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_train_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_pico_fnf_assetss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_pico_fnf_assetss_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_week3_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_bfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_bfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_dumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_fastcarlol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limooverlay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limosunset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_momcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_momcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_mom_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_mom_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_week4_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgescalator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgwalls_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmastree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmaswall_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_eviltree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_fgsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_gfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_gfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_mom_dad_christmas_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_mom_dad_christmas_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_monsterchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_monsterchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_week5_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixelsdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixelsdead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_gfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_gfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spirit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spirit_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameover_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameoverend_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchbox_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchboxscary_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_week6_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_xevent_images_overwrite_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_xevent_images_overwrite_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_smoke_images_garstage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_smoke_images_garstagebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_intromod__append_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_modlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__changelog_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_songs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_shared_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week2_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week3_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week4_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week5_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week6_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week7_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week8_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week9_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week10_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/preload/data/blammed/blammed-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed/blammed-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed/blammed.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed-b-side/blammed-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_b_side_blammed_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed-b-side/blammed-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_b_side_blammed_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed-b-side/blammed-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_b_side_blammed_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo-b-side/bopeebo-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_b_side_bopeebo_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo-b-side/bopeebo-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_b_side_bopeebo_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo-b-side/bopeebo-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_b_side_bopeebo_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/boxing-match/boxing-match-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_boxing_match_boxing_match_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/boxing-match/boxing-match-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_boxing_match_boxing_match_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/boxing-match/boxing-match.json") @:noCompletion #if display private #end class __ASSET__assets_data_boxing_match_boxing_match_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/boxing-match/boxingDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_boxing_match_boxingdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/characterList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/cocoa-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/cocoa-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/cocoa.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa-b-side/cocoa-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_b_side_cocoa_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa-b-side/cocoa-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_b_side_cocoa_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa-b-side/cocoa-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_b_side_cocoa_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/controls.txt") @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dadbattle/dadbattle-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dadbattle/dadbattle-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dadbattle/dadbattle.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dadbattle-b-side/dadbattle-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_b_side_dadbattle_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dadbattle-b-side/dadbattle-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_b_side_dadbattle_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dadbattle-b-side/dadbattle-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_b_side_dadbattle_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/eggnog-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/eggnog-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/eggnog.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog-b-side/eggnog-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_b_side_eggnog_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog-b-side/eggnog-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_b_side_eggnog_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog-b-side/eggnog-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_b_side_eggnog_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fading/fading-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_fading_fading_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fading/fading-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_fading_fading_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fading/fading.json") @:noCompletion #if display private #end class __ASSET__assets_data_fading_fading_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fading/fadingDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_fading_fadingdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/foolhardy/foolhardy-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_foolhardy_foolhardy_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/foolhardy/foolhardy-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_foolhardy_foolhardy_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/foolhardy/foolhardy.json") @:noCompletion #if display private #end class __ASSET__assets_data_foolhardy_foolhardy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/foolhardy/poggin.txt") @:noCompletion #if display private #end class __ASSET__assets_data_foolhardy_poggin_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/freeplaySonglist.txt") @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/fresh-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/fresh-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/fresh.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh-b-side/fresh-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_b_side_fresh_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh-b-side/fresh-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_b_side_fresh_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh-b-side/fresh-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_b_side_fresh_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/headache/headache-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_headache_headache_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/headache/headache-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_headache_headache_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/headache/headache.json") @:noCompletion #if display private #end class __ASSET__assets_data_headache_headache_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/headache/headacheDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_headache_headachedialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/high-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/high-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/high.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high-b-side/high-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_b_side_high_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high-b-side/high-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_b_side_high_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high-b-side/high-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_b_side_high_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/inkingmistake/inkingmistake-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_inkingmistake_inkingmistake_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/inkingmistake/inkingmistake-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_inkingmistake_inkingmistake_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/inkingmistake/inkingmistake.json") @:noCompletion #if display private #end class __ASSET__assets_data_inkingmistake_inkingmistake_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/introText.txt") @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/light-it-up/light-it-up-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_light_it_up_light_it_up_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/light-it-up/light-it-up-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_light_it_up_light_it_up_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/light-it-up/light-it-up.json") @:noCompletion #if display private #end class __ASSET__assets_data_light_it_up_light_it_up_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/light-it-up/lightDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_light_it_up_lightdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/milf-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/milf-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/milf.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf-b-side/milf-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_b_side_milf_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf-b-side/milf-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_b_side_milf_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf-b-side/milf-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_b_side_milf_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/monster/monster-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/monster/monster-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/monster/monster.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/nerves/nerves-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_nerves_nerves_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/nerves/nerves-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_nerves_nerves_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/nerves/nerves.json") @:noCompletion #if display private #end class __ASSET__assets_data_nerves_nerves_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/nerves/nervesDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_nerves_nervesdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/offsettest/offsettest.json") @:noCompletion #if display private #end class __ASSET__assets_data_offsettest_offsettest_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/overwrite/overwrite-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_overwrite_overwrite_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/overwrite/overwrite-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_overwrite_overwrite_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/overwrite/overwrite.json") @:noCompletion #if display private #end class __ASSET__assets_data_overwrite_overwrite_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly/philly-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly/philly-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly/philly.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly-b-side/philly-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_b_side_philly_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly-b-side/philly-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_b_side_philly_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly-b-side/philly-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_b_side_philly_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico/pico-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico/pico-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico/pico.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico-b-side/pico-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_b_side_pico_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico-b-side/pico-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_b_side_pico_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico-b-side/pico-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_b_side_pico_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/release/release-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_release_release_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/release/release-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_release_release_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/release/release.json") @:noCompletion #if display private #end class __ASSET__assets_data_release_release_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/release/releaseDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_release_releasedialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ridge/ridge.json") @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/roses-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/roses-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/roses.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/rosesDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_roses_rosesdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses-b-side/roses-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_b_side_roses_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses-b-side/roses-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_b_side_roses_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses-b-side/roses-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_b_side_roses_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses-b-side/rosesDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_roses_b_side_rosesdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ruckus/ruckus-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_ruckus_ruckus_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ruckus/ruckus-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_ruckus_ruckus_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ruckus/ruckus.json") @:noCompletion #if display private #end class __ASSET__assets_data_ruckus_ruckus_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/satin-panties-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/satin-panties-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/satin-panties.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties-b-side/satin-panties-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_b_side_satin_panties_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties-b-side/satin-panties-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_b_side_satin_panties_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties-b-side/satin-panties-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_b_side_satin_panties_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpai-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpai-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpai.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpaiDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpaidialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai-b-side/senpai-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_b_side_senpai_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai-b-side/senpai-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_b_side_senpai_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai-b-side/senpai-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_b_side_senpai_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai-b-side/senpaiDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_b_side_senpaidialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/smash/smash.json") @:noCompletion #if display private #end class __ASSET__assets_data_smash_smash_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south/south-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south/south-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south/south.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south-b-side/south-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_b_side_south_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south-b-side/south-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_b_side_south_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south-b-side/south-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_b_side_south_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/specialThanks.txt") @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez/spookeez-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez/spookeez-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez/spookeez.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez-b-side/spookeez-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_b_side_spookeez_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez-b-side/spookeez-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_b_side_spookeez_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez-b-side/spookeez-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_b_side_spookeez_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sporting/sporting-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_sporting_sporting_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sporting/sporting-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_sporting_sporting_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sporting/sporting.json") @:noCompletion #if display private #end class __ASSET__assets_data_sporting_sporting_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sporting/sportingDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_sporting_sportingdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/target-practice/target-practice-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_target_practice_target_practice_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/target-practice/target-practice-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_target_practice_target_practice_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/target-practice/target-practice.json") @:noCompletion #if display private #end class __ASSET__assets_data_target_practice_target_practice_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thorns-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thorns-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thorns.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thornsDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thornsdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns-b-side/thorns-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_b_side_thorns_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns-b-side/thorns-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_b_side_thorns_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns-b-side/thorns-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_b_side_thorns_b_side_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns-b-side/thornsDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_b_side_thornsdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/winter-horrorland-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/winter-horrorland-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/winter-horrorland.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland-b-side/winter-horrorland-b-side-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_b_side_winter_horrorland_b_side_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland-b-side/winter-horrorland-b-side-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_b_side_winter_horrorland_b_side_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland-b-side/winter-horrorland-b-side.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_b_side_winter_horrorland_b_side_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/alphabet.png") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/alphabet.xml") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/campaign_menu_UI_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/campaign_menu_UI_characters.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_characters.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/FNF_main_menu_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/FNF_main_menu_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/gfDanceTitle.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/gfDanceTitle.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/iconGrid.png") @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/logoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGBlue.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGMagenta.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuDesat.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/newgrounds_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num0.png") @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num1.png") @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num2.png") @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num3.png") @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num4.png") @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num5.png") @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num6.png") @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num7.png") @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num8.png") @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num9.png") @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week0.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week1.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week2.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week3.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week4.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week5.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week6.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week7.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/titleEnter.png") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/titleEnter.xml") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/music/freakyMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/cancelMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/confirmMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/oopsfarted.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_oopsfarted_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/scrollMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/blammed/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/blammed/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/blammed-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/blammed-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebo/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebo/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebo-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebo-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/boxing-match/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_boxing_match_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/boxing-match/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_boxing_match_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/cocoa/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/cocoa/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/cocoa-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/cocoa-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/dadbattle/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/dadbattle/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/dadbattle-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/dadbattle-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/eggnog/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/eggnog/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/eggnog-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/eggnog-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fading/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fading_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fading/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fading_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/foolhardy/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_foolhardy_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/foolhardy/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_foolhardy_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fresh/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fresh/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fresh-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fresh-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/headache/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_headache_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/headache/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_headache_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/high/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_high_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/high/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_high_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/high-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_high_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/high-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_high_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/inkingmistake/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_inkingmistake_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/inkingmistake/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_inkingmistake_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/light-it-up/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_light_it_up_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/light-it-up/lightDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_songs_light_it_up_lightdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/songs/light-it-up/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_light_it_up_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/milf/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_milf_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/milf/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_milf_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/milf-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_milf_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/milf-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_milf_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/monster/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_monster_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/monster/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_monster_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/nerves/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_nerves_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/nerves/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_nerves_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/offsettest/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_offsettest_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/overwrite/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_overwrite_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/overwrite/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_overwrite_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/philly/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_philly_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/philly/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_philly_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/philly-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_philly_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/philly-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_philly_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/pico/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_pico_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/pico/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_pico_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/pico-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_pico_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/pico-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_pico_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/release/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_release_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/release/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_release_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/roses/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_roses_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/roses/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_roses_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/roses-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_roses_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/roses-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_roses_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/ruckus/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_ruckus_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/ruckus/ruckusDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_songs_ruckus_ruckusdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/songs/ruckus/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_ruckus_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/satin-panties/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/satin-panties/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/satin-panties-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/satin-panties-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/senpai/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/senpai/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/senpai-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/senpai-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/south/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_south_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/south/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_south_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/south-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_south_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/south-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_south_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/spookeez/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/spookeez/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/spookeez-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/spookeez-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/sporting/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_sporting_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/sporting/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_sporting_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/target-practice/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_target_practice_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/target-practice/ruckusDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_songs_target_practice_ruckusdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/songs/target-practice/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_target_practice_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/thorns/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/thorns/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/thorns-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/thorns-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/tutorial/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/winter-horrorland/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/winter-horrorland/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/winter-horrorland-b-side/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_b_side_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/winter-horrorland-b-side/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_b_side_voices_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/backspace.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/backspace.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/BOYFRIEND.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/BOYFRIEND.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/combo.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/DADDY_DEAREST.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/DADDY_DEAREST.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/foolhardy/images/Maze.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_foolhardy_images_maze_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/foolhardy/images/Maze.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_foolhardy_images_maze_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/foolhardy/zardy.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_foolhardy_zardy_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/foolhardy/zardy.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_foolhardy_zardy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/GF_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/GF_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/go.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/good.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/grafix.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/healthBar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/lol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/lose.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/lose.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/NOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/bfLol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/bfLol.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/pauseBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pauseAlt/pauseUI.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/pauseUI.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/ready.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/restart.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/screencapTierImage.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/set.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/shit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/sick.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/smoke/garcellodead_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcellodead_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/smoke/garcellodead_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcellodead_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/smoke/garcelloghosty_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcelloghosty_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/smoke/garcelloghosty_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcelloghosty_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/smoke/garcellotired_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcellotired_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/smoke/garcellotired_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcellotired_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/smoke/garcello_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcello_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/smoke/garcello_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_garcello_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/smoke/images/gardead.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_gardead_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/smoke/images/garSmoke.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garsmoke_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/smoke/images/garSmoke.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garsmoke_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/smoke/images/garStage.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garstage_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/smoke/images/garStagealt.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garstagealt_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/smoke/images/garStagebg.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garstagebg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/smoke/images/garStagebgAlt.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_smoke_images_garstagebgalt_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/speech_bubble_talking.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/speech_bubble_talking.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/stageback.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagecurtains.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagefront.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stage_light.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/vsmatt/bf-wii.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_bf_wii_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/vsmatt/bf-wii.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_bf_wii_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/vsmatt/images/boxingnight1.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_images_boxingnight1_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/vsmatt/images/boxingnight2.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_images_boxingnight2_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/vsmatt/images/boxingnight3.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_images_boxingnight3_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/vsmatt/images/swordfight.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_images_swordfight_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/vsmatt/mattmad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_mattmad_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/vsmatt/mattmad.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_mattmad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/vsmatt/matt_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_matt_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/vsmatt/matt_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_vsmatt_matt_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/week54prototype.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/bg0.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg0_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/bg1.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg1_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/bg2.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg2_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/bg3.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg3_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/bg4.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg4_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/bg5.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg5_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/bg6.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_bg6_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/fg.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_fg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/ground.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_ground_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_note_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/x-event/images/NOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_note_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/x-event/images/NOTE_xevent.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_note_xevent_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/x-event/images/NOTE_xevent.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_note_xevent_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/x-event/images/overwrite_bg.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_overwrite_bg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/images/overwrite_light.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_images_overwrite_light_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/x-event/ink.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_ink_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/x-event/ink.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_ink_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/x-event/xchara.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_xchara_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/x-event/xchara.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_x_event_xchara_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/zzzzzzzz.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/music/breakfast.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOver.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOverEnd.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY_TEXT_BOX.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass0.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/clickText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_4.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Shut_off.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Turn_On.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/pixelText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Senpai_Dies.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/soundTest.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/train_passes.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/tutorial/tutorial_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_tutorial_tutorial_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/week1/week1_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week1_week1_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week2/images/halloween_bg.png") @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_png extends lime.graphics.Image {}
@:keep @:file("assets/week2/images/halloween_bg.xml") @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week2/images/Monster_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_week2_images_monster_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week2/images/Monster_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week2_images_monster_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week2/images/spooky_kids_assets.png") @:noCompletion #if display private #end class __ASSET__assets_week2_images_spooky_kids_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week2/images/spooky_kids_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week2_images_spooky_kids_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week2/week2_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week2_week2_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week3/images/philly/behindTrain.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_behindtrain_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/city.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_city_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/sky.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_sky_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/street.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_street_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/train.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_train_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win0.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win0_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win1.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win1_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win2.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win2_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win3.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win3_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win4.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win4_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/Pico_FNF_assetss.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_pico_fnf_assetss_png extends lime.graphics.Image {}
@:keep @:file("assets/week3/images/Pico_FNF_assetss.xml") @:noCompletion #if display private #end class __ASSET__assets_week3_images_pico_fnf_assetss_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week3/week3_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week3_week3_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/bfCar.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_bfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/bfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_bfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/gfCar.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/gfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/bgLimo.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/bgLimo.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/dumb.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_dumb_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/fastCarLol.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_fastcarlol_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/limoDancer.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/limoDancer.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/limoDrive.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/limoDrive.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/limoOverlay.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limooverlay_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/limoSunset.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limosunset_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/momCar.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_momcar_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/momCar.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_momcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/Mom_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_mom_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/Mom_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_mom_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week4/week4_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week4_week4_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/bfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/bfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/bgEscalator.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgescalator_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/bgWalls.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgwalls_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/bottomBop.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/bottomBop.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/christmasTree.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmastree_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/christmasWall.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmaswall_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilBG.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilbg_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilSnow.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilsnow_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilTree.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_eviltree_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/fgSnow.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_fgsnow_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/gfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_gfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/gfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_gfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/mom_dad_christmas_assets.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_mom_dad_christmas_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/mom_dad_christmas_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_mom_dad_christmas_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/monsterChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_monsterchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/monsterChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_monsterchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/santa.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/santa.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/upperBop.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/upperBop.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week5/week5_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week5_week5_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bfPixelsDEAD.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixelsdead_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bfPixelsDEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixelsdead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/gfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_gfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/gfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_gfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/arrowEnds.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrowends_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/arrows-pixels.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrows_pixels_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/senpai.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpai_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpai.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpai_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/spirit.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spirit_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/spirit.txt") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spirit_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/music/gameOver-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameover_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/gameOverEnd-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameoverend_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/Lunchbox.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchbox_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/LunchboxScary.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchboxscary_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/week6_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week6_week6_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/xevent/images/overwrite_bg.png") @:noCompletion #if display private #end class __ASSET__assets_xevent_images_overwrite_bg_png extends lime.graphics.Image {}
@:keep @:image("assets/xevent/images/overwrite_light.png") @:noCompletion #if display private #end class __ASSET__assets_xevent_images_overwrite_light_png extends lime.graphics.Image {}
@:keep @:image("assets/smoke/images/garStage.png") @:noCompletion #if display private #end class __ASSET__assets_smoke_images_garstage_png extends lime.graphics.Image {}
@:keep @:image("assets/smoke/images/garStagebg.png") @:noCompletion #if display private #end class __ASSET__assets_smoke_images_garstagebg_png extends lime.graphics.Image {}
@:keep @:file("art/readme.txt") @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends haxe.io.Bytes {}
@:keep @:file("CHANGELOG.md") @:noCompletion #if display private #end class __ASSET__changelog_txt extends haxe.io.Bytes {}
@:keep @:file("assets/fonts/fonts-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/pixel.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/vcr.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_week7_json extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_week10_json extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel"; #else ascender = 1125; descender = -250; height = 1375; numGlyphs = 262; underlinePosition = -143; underlineThickness = 20; unitsPerEM = 1000; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr"; #else ascender = 1800; descender = 0; height = 2000; numGlyphs = 204; underlinePosition = -292; underlineThickness = 150; unitsPerEM = 2048; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
