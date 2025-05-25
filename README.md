
## How to use
### Valid IDs
The ID can generally be any character although using special characters is not recommended as this can lead to unpredictable behavior

### Loading a Layout
This can be done by running `iss:functions/load/ {id:<your id>}`
If the player doesn't have a saved Layout tied to the ID it will try to run the defined fallback function(see "**Defining a fallback function**") if there is no fallback function defined for that ID it will fail

You can also load the defined fallback function directly by running `iss:functions/load/fallback {id:<your id>}`

### Saving
You can save a Layout by running `iss:functions/save {id:<your id>}`, this will save the Inventory of the player who is executing it to the specified id

### Deleting Layouts
To delete a Layout of a spesific player run `iss:functions/delete/ {id:<your id>}` as the player
To delete _All_ Layouts associated with a certain id run `iss:functions/delete/all {id:<your id>}`

### Defining a fallback function

To add a fallback function to an id run `data modify storage iss data.<your id>.fallback set value "<your function path>"` 
I Would Highly Recommend that you put the command in your load function as deleting _All_ Layouts will also remove the fallback function data(subject to change)
<details>
<summary> How to use [old pre 2.0.0]</summary>


## Inventory Types

### Global Inventories
Global inventories serve as a backup for **personal inventories**, operating independently from individual player data.

### Personal Inventories
Personal inventories are linked to individual players. They were originally designed for those who wanted to customize their kits differently from the default options, but they can be used for any purpose. If a player attempts to load a personal inventory that hasn't been saved yet, the corresponding **global inventory** will be loaded instead.

---


## Saving and Loading Inventories

## Inventory Ids
To save or load an inventory, you must always provide the inventory's ID. Note that certain characters are **not allowed** in the inventory ID, including:

- Spaces
- Periods (`.`)
- Square brackets (`[]`)
- Parentheses (`()`)

---

## Saving & Loading
These commands are designed to store and restore the inventory of the player who executes them.

### Saving

1. **Global Inventory**  
   Use the `save_default` function to save a global inventory, including the desired ID as an argument.

   **Example:**
   ``` 
   /function iss:functions/save_default {id:"starter_kit"}
   ```

2. **Personal Inventory**  
   To save a personal inventory, use the `save_custom_layout` function with the ID argument.

   **Example:**
   ```
   /function iss:functions/save_custom_layout {id:"starter_kit"}
   ```

### Loading
Loading commands replace the player's entire inventory.

1. **Global Inventory**  
   Use the `load_default` function to load a global inventory, specifying the ID.

   **Example:**
   ```
   /function iss:functions/load_default {id:"starter_kit"}
   ```

2. **Personal Inventory**  
   To load a personal inventory, use the `load_custom_layout` function with the ID argument.

   **Example:**
   ```
   /function iss:functions/load_custom_layout {id:"starter_kit"}
   ```
 ### Resetting Personal Inventories 
- To reset a player's personal inventory, use the `reset_custom_layout` function. This will clear and reset the personal inventory of the executing player.

   **Example:**
   ```
   /function iss:functions/reset_custom_layout {id:"starter_kit"}
   ```