﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `UpdatedEntities`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `UpdatedEntities`
(
	`id`         INT NOT NULL,
	`Value1`     INT NOT NULL,
	`Value2`     INT NOT NULL,
	`Value3`     INT NOT NULL,
	`RelationId` INT     NULL,

	CONSTRAINT `PK_UpdatedEntities` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `UpdatedEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`RelationId`
)
VALUES
(0,1,1,3,0),
(1,11,12,13,1),
(2,21,22,23,2),
(3,31,32,33,3)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NewEntities`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NewEntities`
(
	`id`     INT NOT NULL,
	`Value1` INT NOT NULL,
	`Value2` INT NOT NULL,
	`Value3` INT NOT NULL,

	CONSTRAINT `PK_NewEntities` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `NewEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`
)
VALUES
(0,0,0,0),
(1,1,1,1),
(2,2,2,2),
(3,3,3,3)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @int1 Int32
SET     @int1 = 11
DECLARE @int2 Int32
SET     @int2 = 22
DECLARE @int3 Int32
SET     @int3 = 33
DECLARE @someId Int32
SET     @someId = 100

UPDATE
	`UpdatedEntities` `c_1`
		INNER JOIN `NewEntities` `t` ON `t`.`id` = `c_1`.`id`
SET
	`c_1`.`Value1` = (`c_1`.`Value1` * `t`.`Value1`) * @int1,
	`c_1`.`Value2` = (`c_1`.`Value2` * `t`.`Value2`) * @int2,
	`c_1`.`Value3` = (`c_1`.`Value3` * `t`.`Value3`) * @int3
WHERE
	`t`.`id` <> @someId

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NewEntities`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `UpdatedEntities`

