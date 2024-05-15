BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `UpdatedEntities`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NewEntities`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `NewEntities`
(
	`id`     INT NOT NULL,
	`Value1` INT NOT NULL,
	`Value2` INT NOT NULL,
	`Value3` INT NOT NULL,

	CONSTRAINT `PK_NewEntities` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @int1 Int32
SET     @int1 = 11
DECLARE @int2 Int32
SET     @int2 = 22
DECLARE @int3 Int32
SET     @int3 = 33
DECLARE @someId Int32
SET     @someId = 100

UPDATE
	`UpdatedEntities` `t1`
		INNER JOIN `NewEntities` `t` ON `t`.`id` = `t1`.`id`
SET
	`t1`.`Value1` = (`t1`.`Value1` * `t`.`Value1`) * @int1,
	`t1`.`Value2` = (`t1`.`Value2` * `t`.`Value2`) * @int2,
	`t1`.`Value3` = (`t1`.`Value3` * `t`.`Value3`) * @int3
WHERE
	`t`.`id` <> @someId

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`v`.`id`,
	`v`.`Value1`,
	`v`.`Value2`,
	`v`.`Value3`
FROM
	`UpdatedEntities` `v`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NewEntities`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `UpdatedEntities`

