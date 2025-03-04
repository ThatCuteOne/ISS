ThatCuteOnes's Inventory saving system or for short ISS, allows for easy inventory loading and saving.

### How to use [1.3.0+]

<details>
<summary>Inventory Types</summary>

### Global Inventories
Global inventories serve as a backup for **personal inventories**, operating independently from individual player data.

### Personal Inventories
Personal inventories are linked to individual players. They were originally designed for those who wanted to customize their kits differently from the default options, but they can be used for any purpose. If a player attempts to load a personal inventory that hasn't been saved yet, the corresponding **global inventory** will be loaded instead.

</details>

---

<details>
<summary>Saving and Loading Inventories</summary>

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

   






</details>



