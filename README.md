<div align="center">

# 2D Dungeon Rush
**A pixel-style action platformer where you explore dungeons, defeat enemies, fight bosses, and reach the final goal.**

---

</div>

## Overview

This project is a **2D side-scrolling platformer game** built using **GameMaker**.  
The player controls a hero navigating through dungeon environments filled with enemies, obstacles, and a final objective.

The goal is simple:

> Survive → Defeat enemies → Reach the end → Clear the level.

---

## Features

### Gameplay
- Smooth platformer movement with gravity & collision physics
- Melee combat system with hit detection
- Enemy AI with patrol logic
- Boss enemy with increased health
- Knockback & invincibility frames system
- Player health system 

### Mechanics
- Edge detection AI for enemies
- Wall collision turning system
- Hit animations + death animations
- Damage cooldown system
- Knockback physics
- Score tracking UI

### UI System
- Health display
- Score counter
- Level Passed animation
- Start controls panel
- Camera-locked UI elements

### Visual Effects
- Pixel art sprites
- Animated characters
- Attack animations
- Hit reactions
- Bounce UI indicators

### Audio
- Background music system
- Looping soundtrack support

---

## Controls

| Key | Action |
|-----|-------|
| A / D | Move Left / Right |
| W or J | Jump |
| K | Attack |
| Mouse | UI interaction |

---

##  Win Condition

You win the level when:

> The hero reaches the **grass platform at the end of the map**

When triggered:
- Player movement freezes
- “LEVEL PASSED” UI appears
- Victory state activates

---

##  Enemy Types

### 👾 Basic Enemy
- Patrols between edges
- Turns when hitting walls
- Takes damage from attacks

### Boss Enemy
- Higher HP
- Same patrol logic
- Takes multiple hits to defeat

---

## Technologies Used

- **Engine:** GameMaker Studio 2
- **Language:** GML (GameMaker Language)
- **Graphics:** Pixel Sprites
- **Audio:** GameMaker Sound System


---

## Running the Project

1. Open **GameMaker Studio**
2. Load project file
3. Press **Run**
4. Play

---

## Future Improvements

- Multiple levels
- Save system
- Sound effects
- Boss attack patterns
- Menu screen
- Difficulty system

---

## Author

**Sujal Negi**

---

## Credits

- Pixel assets — open sprite sources
- Sound assets — free libraries
- Inspiration — classic platformer games

---

