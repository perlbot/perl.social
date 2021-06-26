---
title: Metabot project
---

# Welcome to the metabot project site

This is mostly a placeholder until there's real stuff here

## FAQ

### What is metabot/meatbot?  

Metabot is an attempt at creating a way for the operators of the Libera #perl moderators/operators to show why they've made any and all bans, kicks, or taken any other measures against a user of the channel.  This is to both protect the users from abuse by the operators and also to protect the operators from unfounded accusations of abuse.  This will hopefully serve the same kind of purpose as body cameras on police.  

Meatbot was originally a joke made about the name of the bot "metabot" being typo'd.  Along with that it let me get a rather nice domain for the project.  

### Will the logs be public  
Short answer: No.  
Longer answer: Mostly no, there will be the ability to create a limited view of the logs around any given operator action that will show the affected users and the operator clearly, while masking all identifiable information about other users.  This is so that any operator abuse can be shown transparently to the community.  This will be configurable for how much of the logs are shown to someone doing an investigation based on time or number of lines of chat (whichever is longer) before and after the incident.

### What about the GDPR?  
This is all running from and in the USA so the GDPR itself shouldn't directly apply.  That said the information that is being collected is all publically available to anyone in the IRC channels themselves.  Along with that the data being collected is directly necessary for the correct and useful functioning of the service.  As far as the EU rules that allow you to request the removal of personal data I do not know if I have any specific requirements to actually abide by such a request but since it is not in the EU I do not believe it to be so.

### I'd like to report some operator abuse to be investigated.  
That isn't a question.  That said right now there's no specified process at the moment but there will be in the future.  In the mean time, please contact me on IRC (user simcop2387) or email me (simcop2387 at simcop2387.info) to ask for something to be investigated

### How can we know you can be trusted?  
Realistically you probably can't know that for certain.  That said I've been a part of the #perl irc community on formerly freenode and now libera for about the last 20 years and hope that I've shown myself to be of decent character and trustworthiness to anyone who has interacted with me (simcop2387).

### So you if you can't be trusted what can we do?  
I'm planning on figuring out a way that we can have some kind of non-operator involved oversight from trusted members of the community.  I don't have an exact plan for doing this but I am building the system with this in mind so that someone who isn't an operator can be given access to search and investigate any actions that happen.   
Along with this the bot and system will be open source (It's not written yet so it's not useful to publish the source just yet, it'll be on github) and I'll be making some docker containers to help anyone run their own copy of it.  This way we could have multiple unrelated parties doing the same kind of operator action tracking without having to trust a single person to be honest.

### I object to this kind of logging.  
I understand your objections, but there's not really a way to be able to hold people who hold the power accountable

## So how does it work?
There's a few interesting things that are being done:

### Logging

The main thing going on is that metabot will log all messages and irc traffic that is happening on a monitored channel.  This is everything from the PRIVMSG traffic that user messages come through when people talk, to NOTICE commands and even CTCP commands sent to the channel.  This means that anything said to a user by an operator in public will be seen and recorded by the bot (and vice versa!).

Along with this it will be logging any channel mode changes, (+b, +q, etc.) that happen and recording them as an incident that can be investigated in the future.  This means that any ban, quieting, channel forwarding, etc. will be fully logged and attributed to the operator in question so that if one moderator is doing all of the banning that we can then see why they are and take any actions needed, e.g. warn them that they're being overzealous, abusive, etc. and give them a chance to correct the behavior in question.  If they don't then correct the issue then we can remove their ability to continue the abuse of power and eventually even be dealt with as any other toxic user of the channel.

### IRCv3

IRCv3 Gives a few new interesting and useful tools for doing this kind of operator tracking.  

* account-tag: This extension allows the bot to directly track what network account someone is logged in as on all actions and messages that they perform.  This means that an operator that tries to hide actions by changing their nickname will ultimately end up failing since the bot will be able to see that they are still logged in as their operator account.  This will prevent one operator from impersonating another operator at the same time.
* account-notify: This extension ends up addressing another way that someone could hide their actions by changing which accounts they are logged in as.  It lets the bot see that someone has changed accounts and lets us see that someone is using two accounts to try to hide who they are and act like they weren't the one who was doing the abuse.
* extended-join: This extension helps get the same information as above when someone joins the channel, just to help make things complete so that proper attribution of nicknames to actual users immediately without possibility of making an improper attribution
* server-time: Solanum, the ircd running libera, doesn't support this extension unfortunately.  If it ever does then this will be useful for helping corrolate multiple instances of the logs since it will allow the reported time of everything going on to be the same or nearly the same since it will come from the network itself rather than the client.  This means that the client having an incorrect clock would not affect the time that anything happens in the logs.
