SELECT `id`, `menu_id` FROM `spree_menu_items` WHERE `parent_id` IS NOT NULL; SELECT `child`.`id`, `parent`.`menu_id` FROM `spree_menu_items` `child`, `spree_menu_items` `parent` WHERE `child`.`parent_id` = `parent`.`id`;
SELECT 1 FROM `spree_taxonomies` WHERE `spree_taxonomies`.`store_id` IS NULL; SELECT 1 FROM `spree_taxonomies` WHERE FALSE;
SELECT `spree_menu_items`.`linked_resource_id`, `spree_menus`.`store_id` FROM `spree_menu_items` INNER JOIN `spree_menus` ON `spree_menu_items`.`menu_id` = `spree_menus`.`id` WHERE `spree_menu_items`.`linked_resource_type` = 'Spree::Taxon'; SELECT `spree_taxons`.`id`, `spree_taxonomies`.`store_id` FROM `spree_menu_items` INNER JOIN `spree_taxons` ON `spree_menu_items`.`linked_resource_id` = `spree_taxons`.`id` AND `spree_menu_items`.`linked_resource_type` = 'Spree::Taxon' INNER JOIN `spree_taxonomies` ON `spree_taxons`.`taxonomy_id` = `spree_taxonomies`.`id`;
SELECT `spree_taxons`.`id`, `spree_products_stores`.`store_id` FROM `spree_taxons` INNER JOIN `spree_products_taxons` ON `spree_products_taxons`.`taxon_id` = `spree_taxons`.`id` INNER JOIN `spree_products_stores` ON `spree_products_stores`.`product_id` = `spree_products_taxons`.`product_id`; SELECT `spree_taxons`.`id`, `spree_taxonomies`.`store_id` FROM `spree_taxons` INNER JOIN `spree_taxonomies` ON `spree_taxons`.`taxonomy_id` = `spree_taxonomies`.`id`;
-- A taxon belongs to the same taxonomy as its ancestors.
SELECT `ancestor`.`id`, `me`.`taxonomy_id` FROM `spree_taxons` `me`, `spree_taxons` `ancestor` WHERE `ancestor`.`lft` <= `me`.`lft` AND `ancestor`.`rgt` >= `me`.`rgt`; SELECT `spree_taxons`.`id`, `spree_taxons`.`taxonomy_id` FROM `spree_taxons`;
-- A taxon belongs to the same taxonomy as its descendants.
SELECT `descendant`.`id`, `me`.`taxonomy_id` FROM `spree_taxons` `me`, `spree_taxons` `descendant` WHERE `descendant`.`lft` >= `me`.`lft` AND `descendant`.`lft` < `me`.`rgt`; SELECT `spree_taxons`.`id`, `spree_taxons`.`taxonomy_id` FROM `spree_taxons`;