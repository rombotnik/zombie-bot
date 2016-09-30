# Zombie Bot &ndash; Design

Some stuff TBD.

The bot uses both DMs and a designated channel to direct gameplay. DMs are used for subterfuge and private information.

## Starting a new game

1. `new game` begins a new game. The user who stated the chat command will act as the leader for that round.
2. Users `join` the game during setup. They may also `leave` the game.
3. The leader may specify other settings during setup, such as **difficulty** or **scenario** if they want to play a specific scenario.
4. After the leader confirms OK with `continue`, a new game begins with those settings and players.

## Prologue

1. Bot chooses a random starting scenario for the group and provides an introduction to the characters. It will give some of the players in the group a private goal through DMs, and provide a public goal for success (typically with a timeframe in terms of days).
2. Bot walks the group through getting to the safehouse. Depending on the starting scenario and size of the group, the group may be split up or it may have everyone together already.
3. After the safehouse is established, the bot lists out the safehouse supplies, the apparent conditions of everyone there, and the first day begins.

## Gameplay (General)

- Every day players get a certain number of actions they may perform. (They may opt to pass or rest.) The game progresses by day and night phases. Actions are determined by AP -- more difficult, risky, or long actions tend to take longer.
- The results of actions are random. Risky or low success chance actions usually have ways of being raised by playing smart (bringing extra people, better equipment, etc).
- The game tracks the locations of players. They can only perform actions at their current location. Movement can be costly and, at times, dangerous.
- The game is divided into Dawn, Afternoon, Evening, and Night phases. During the night, zombies attack the base in large numbers and travel is very dangerous. Evening is typically used to prepare for the night phase, and night to rest or defend.

## Settings

### tutorial

Default: False

Bot automatically spits out all help information at the start of each phase the first time it is encountered when in tutorial mode. It can be enabled during setup.

### difficulty

Default: Tough (2)

Values: Beginner, Tough, Challenging, Impossible, APOCALYPSE

Tweaks the difficulty of the game. The narrator's tone changes depending on the difficulty chosen -- a beginner game will have a friendlier narrator than an APOCALYPSE game.

### timer

Default: Off (Turn-based)

Values: Off (Turn-based), 5 minutes, 10 minutes

The maximum amount of time that each round can last. Players will be skipped if they don't respond within the time limit. The leader can optionally issue a "pause" command to prevent the game from continuing.

### pvp

Default: True

Whether or not players will be issued secret goals. Good to turn off for a beginner game, because it allows players to trust each other more easily. Some scenarios will be unavailable.

### scenario

Default: Random

The scenario to run in the game. A random one will be chosen after setup if one is not specified. Some scenarios are only available at certain difficulties.

## Scenarios

### Establishing a safehouse

Difficulty: Beginner+

Players: 1+

Win condition: Survive for 7 days.

Other conditions: No supplies. Begin with a low danger rating.

### Starvation

Difficulty: Beginner+

Players: 1+

Win condition: Survive for 7 days. Have surplus food.

Other conditions: No food supplies. Food is harder to find than usual.

### Besieged

Difficulty: Beginner+

Players: 1+

Win condition: Survive for 7 days. Have a low danger rating.

Other conditions: The surrounding area is full of zombies and therefore very dangerous. Traveling is difficult, and the safehouse needs heavy fortifications to survive.

### Infected (PvP)

Difficulty: Tough+

Players: 2+

Win condition: Survive for 7 days

Other conditions: Half the group is randomly infected. Everyone displays mild symptoms according to the narrator, at least on day 1. The other half of the group is fine, but they have to prove it. The "infected?" role is deliberately vague, and will become zombified halfway through. No betrayers other than the infected are present.

Your secret role is **Infected?**. You feel nauseous, and you're not sure if it's just the flu -- or something worse. You don't have any symptoms of the real infection yet, but you're worried your days are numbered. **Goal: Stay alive?**

### Outsiders (PvP)

Difficulty: Tough+

Players: 4+

Win condition: Survive for 7 days

Other conditions: 2 or more people from the group are outsiders who arrive at the start of the scenario. At least 1 outsider is guaranteed to be a betrayer.
