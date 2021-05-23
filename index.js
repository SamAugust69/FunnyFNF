require('dotenv').config();
const Discord = require('discord.js');
const bot = new Discord.Client();

bot.login("ODQ1NzU5Nzk2OTYzMTgwNTU0.YKlpMQ.x36jtWM0-kBGhGkdEVtvkzMHBck");

bot.on('ready', () => {
    console.info(`Logged in as ${bot.user.tag}!`);
});

var okSTFU = false

bot.on('message', msg => {
    if (msg.content.toLowerCase().includes("gib admin")) {
        let role = msg.guild.roles.cache.get("800163976436252742");
        if (msg.member.roles.cache.has("800163976436252742")) {
            msg.channel.send("you have da role already stop fucking asking");
        } else {
            msg.channel.send("I gave da role");
            msg.member.roles.add(role).catch(console.error);
        }
    } else if (msg.content.toLowerCase().includes("skill issue") && !(msg.member.id === "292810630484721664")) {
        msg.member.kick()
    }
    if ((msg.content === "ok") && (msg.member.id === "609155845317722122")) {
        if (okSTFU == false) {
            msg.channel.send('Stop fucking saying "ok" as a responce it actually fucking pisses me off stfu and stop it')
            msg.channel.send('also im kicking you next time you say it')
            okSTFU = true
        } else {
            msg.member.kick()
            okSTFU = false
        }
    }
});