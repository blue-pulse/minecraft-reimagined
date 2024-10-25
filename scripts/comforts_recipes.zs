// Import libraries
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.bracket.BracketHandlers;

// Functions
function getItemByName(itemName as string) as IItemStack {
    return BracketHandlers.getItem(itemName) as IItemStack;
}

// Variables
var woolColors = [
    "red", "lime", "pink", "gray", 
    "cyan", "blue", "white", "brown", 
    "green", "black", "orange", "yellow", 
    "purple", "magenta","light_blue", "light_gray"
];

// Remove all sleeping bag and sheets recipes
craftingTable.removeByRegex("comforts:sleeping_bag_(?!to$).*");
craftingTable.removeByRegex("handcrafted:.*_sheet");

// Create recipes
for color in woolColors {
    // Variables
    var air = getItemByName("minecraft:air");
    var ingredient = getItemByName("minecraft:" + color + "_wool");

    // Create sleeping bag recipes
    craftingTable.addShaped("sleeping_bag_" + color, getItemByName("comforts:sleeping_bag_" + color), [
        [air, ingredient, air], 
        [air, ingredient, air], 
        [air, ingredient, air]]
    );
    
    // Create sheet recipes
    craftingTable.addShaped(color + "_sheet", getItemByName("handcrafted:" + color + "_sheet"), [
        [air, air, air], 
        [ingredient, ingredient, ingredient], 
        [air, air, air]]
    );
}
