// Import libreries
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.recipe.MirrorAxis;

// Black dye from charcoal
craftingTable.addShapeless("black_dye_from_charcoal", <item:minecraft:black_dye>, [<item:minecraft:charcoal>]);

// Black dye from coal
craftingTable.addShapeless("black_dye_from_coal", <item:minecraft:black_dye>, [<item:minecraft:coal>]);

// Blaze rod
craftingTable.addShapedMirrored("blaze_rod", MirrorAxis.HORIZONTAL, <item:minecraft:blaze_rod>, [
    [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:lava_bucket>], 
    [<item:minecraft:glowstone_dust>, <item:minecraft:lightning_rod>, <item:minecraft:redstone>], 
    [<item:minecraft:lightning_rod>, <item:minecraft:glowstone_dust>, <item:minecraft:air>]]
);

// Bone
craftingTable.addShapedMirrored("bone", MirrorAxis.HORIZONTAL, <item:minecraft:bone>, [
    [<item:minecraft:bone_meal>, <item:minecraft:air>, <item:minecraft:air>], 
    [<item:minecraft:air>, <item:minecraft:bone_meal>, <item:minecraft:air>], 
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:bone_meal>]]
);

// Elytra
craftingTable.addShaped("elytra", <item:minecraft:elytra>, [
    [<item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>], 
    [<item:minecraft:phantom_membrane>, <item:minecraft:nether_star>, <item:minecraft:phantom_membrane>], 
    [<item:minecraft:feather>, <item:minecraft:air>, <item:minecraft:feather>]]
);

// Ender pearl
craftingTable.addShaped("ender_pearl", <item:minecraft:ender_pearl>, [
    [<item:minecraft:redstone>, <item:minecraft:ghast_tear>, <item:minecraft:redstone>], 
    [<item:minecraft:ghast_tear>, <item:minecraft:magma_cream>, <item:minecraft:ghast_tear>], 
    [<item:minecraft:redstone>, <item:minecraft:ghast_tear>, <item:minecraft:redstone>]]
);

// Feather
craftingTable.addShapeless("feather", <item:minecraft:feather> * 2, [<item:minecraft:string>, <item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:stick>]);

// Gunpowder
craftingTable.addShapeless("gunpowder", <item:minecraft:gunpowder>, [<item:minecraft:redstone>, <item:minecraft:bone_meal>, <item:minecraft:bone_meal>, <item:minecraft:charcoal>]);

// Phantom membrane
craftingTable.addShaped("phantom_membrane", <item:minecraft:phantom_membrane>, [
    [<item:minecraft:feather>, <item:minecraft:ender_pearl>, <item:minecraft:feather>], 
    [<item:minecraft:ender_pearl>, <item:minecraft:leather>, <item:minecraft:ender_pearl>], 
    [<item:minecraft:feather>, <item:minecraft:ender_pearl>, <item:minecraft:feather>]]
);

// Rabbit hide
furnace.addRecipe("rabbit_hide", <item:minecraft:rabbit_hide>, <item:minecraft:rotten_flesh>, 1.0, 420);

// Slime ball
furnace.addRecipe("slime_ball", <item:minecraft:slime_ball>, <item:minecraft:bone_meal>, 1.0, 520);

// String from wheat
craftingTable.addShapedMirrored("string_from_wheat", MirrorAxis.HORIZONTAL, <item:minecraft:string> * 2, [
    [<item:minecraft:wheat>, <item:minecraft:air>, <item:minecraft:air>], 
    [<item:minecraft:air>, <item:minecraft:wheat>, <item:minecraft:air>], 
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:wheat>]]
);

// String from wool
craftingTable.addShapeless("string_from_wool", <item:minecraft:string> * 4, [<tag:item:minecraft:wool>]);

// Totem of Undying
craftingTable.addShaped("totem_of_undying", <item:minecraft:totem_of_undying>, [
    [<item:minecraft:gold_ingot>, <item:minecraft:emerald>, <item:minecraft:gold_ingot>], 
    [<item:minecraft:gold_ingot>, <item:minecraft:blaze_powder>, <item:minecraft:gold_ingot>], 
    [<item:minecraft:air>, <item:minecraft:gold_block>, <item:minecraft:air>]]
);

// Trident
craftingTable.addShapedMirrored("trident", MirrorAxis.HORIZONTAL, <item:minecraft:trident>, [
    [<item:minecraft:air>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>], 
    [<item:minecraft:air>, <item:minecraft:prismarine>, <item:minecraft:sea_lantern>], 
    [<item:minecraft:prismarine>, <item:minecraft:air>, <item:minecraft:air>]]
);
