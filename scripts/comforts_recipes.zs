// Import libraries
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.recipe.MirrorAxis;

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
    craftingTable.addShapedMirrored("sleeping_bag_" + color, MirrorAxis.VERTICAL, getItemByName("comforts:sleeping_bag_" + color), [
        [ingredient], 
        [ingredient], 
        [ingredient]]
    );
    
    // Create sheet recipes
    craftingTable.addShapedMirrored(color + "_sheet", MirrorAxis.HORIZONTAL, getItemByName("handcrafted:" + color + "_sheet"), [
        [ingredient, ingredient, ingredient]]
    );
}
