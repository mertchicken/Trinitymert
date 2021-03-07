DELIMITER $$
DROP PROCEDURE IF EXISTS objscale_update_procedure $$
CREATE PROCEDURE objscale_update_procedure()
BEGIN

IF EXISTS(SELECT 1 FROM `updates` WHERE `name` = "2020_09_20_01_world.sql") AND NOT EXISTS(SELECT 1 FROM `updates` WHERE `name` = "2021_03_07_00_world_objscale.sql") AND NOT EXISTS(SELECT 1 FROM `updates` WHERE `name` = "2016_11_10_00_world_objscale.sql") THEN

-- gameobject
ALTER TABLE `gameobject`ADD COLUMN `size` FLOAT NOT NULL DEFAULT '-1';
INSERT INTO `command` (`name`, `help`) VALUES ('gobject set scale', 'Syntax: .gobject set scale #guid #scale\r\n\r\nGameobject with DB guid #guid size changed to #scale. Gameobject scale saved to DB and persistent. Does not affect other gameobjects of same entry. Using -1 scale uses the default scale from template.');

-- creature
ALTER TABLE `creature` ADD COLUMN `size` FLOAT NOT NULL DEFAULT '-1';
INSERT INTO `command` (`name`, `help`) VALUES ('npc set scale', 'Syntax: .npc set scale #scale\r\n\r\nSelected NPC size changed to #scale. NPC scale saved to DB and persistent. Does not affect other creatures of same entry. Using -1 scale uses the default scale from template.');

END IF;

END $$
CALL objscale_update_procedure() $$
DROP PROCEDURE IF EXISTS objscale_update_procedure $$
DELIMITER ;
