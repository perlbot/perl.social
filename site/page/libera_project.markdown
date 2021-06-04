---
title: Libera project conventions
---

# Bot cloaks

[List of all known bots](/page/libera_bots.html)

All bot cloaks will follow this pattern

    @perlbot/bot/<owner_account>/<bot_account>

This allows the bot owners to be identified along with determining if two bots are related by the account they sign in as

# Bot runner accounts

This is still partly up in the air, as I've yet to decide what the proper system for assigning titles should be.  I want something whimsical and inscruitable because they're otherwise useless anyway.  They'll the following format

    @perlbot/<title>/<owner_account>

## proposed titles

The proposed titles for ranking the amount of bots being run and cloaked is mostly for fun and has no bearing on any input on the project itself.  The idea is to be whimsical and ecclectic.

I'm basing this right now on some stuff from the old Advanced Dungeons & Dragons since it meets everything I wanted at the moment.

| Number of bots | Titles (figher) | (magic)   | (cleric)     | (thief)         | (monk)        | (assassin)     | (bard)    |
+----------------+-----------------+-----------+--------------+-----------------+---------------+----------------+-----------+
| 0              | supporter       | npc       | villager     | fodder          | bother/sister | thug           | muse      |
| 1              | veteran         | medium    | acolyte      | apprentice      | novice        | killer         | lyrist    |
| 2..3           | warrior         | seer      | adept        | footpad         | initiate      | murderer       | sonnateer |
| 4..5           | swordmaster     | conjuror  | priest       | robber          | discple       | slayer         | skald     |
| 6..7           | hero            | theurgist | vicar        | burglar         | immaculate    | cutthroat      | racaride  |
| 7..11          | swashbuckler    | magician  | curate       | cutpurse        | ?             | dacoit         | joungleur |
| 12..17         | myrmidon        | enchanter | bishop       | sharper         |               | executioner    | tourbador |
| 18..23         | champion        | warlock   | lama         | pilferer        |               | assassin       | minstrel  |
| 24..           | superhero       | sorcerer  | patriarch(?) | master pilferer |               | prime assassin | lorist    |



## custom titles

We will allow basically any custom title requested, with the option to reject a custom title for any reason.  

An exmaple of this is

| nick       | cloak                         |
|------------|-------------------------------|
| simcop2387 | @perlbot/patrician/simcop2387 |


# #perlbot-\* channels

The main #perlbot channel is and always will be a dumping ground for bot traffic.  If you need a channel to test a bot in without annoying anyone, it will always be open for it.

Sub channels will be made on an adhoc basis for anything desired, most likely for bot specific support channels.  #perlbot-metabot will likely be the first one to be setup once the bot is ready and support for it will be needed.

