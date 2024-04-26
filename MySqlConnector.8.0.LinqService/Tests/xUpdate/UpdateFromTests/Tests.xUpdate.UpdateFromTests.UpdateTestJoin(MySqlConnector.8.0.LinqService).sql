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
DECLARE @id Int32
SET     @id = 0
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value3 Int32
SET     @Value3 = 3
DECLARE @RelationId Int32
SET     @RelationId = 0

INSERT INTO `UpdatedEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`RelationId`
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 1
DECLARE @Value1 Int32
SET     @Value1 = 11
DECLARE @Value2 Int32
SET     @Value2 = 12
DECLARE @Value3 Int32
SET     @Value3 = 13
DECLARE @RelationId Int32
SET     @RelationId = 1

INSERT INTO `UpdatedEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`RelationId`
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 2
DECLARE @Value1 Int32
SET     @Value1 = 21
DECLARE @Value2 Int32
SET     @Value2 = 22
DECLARE @Value3 Int32
SET     @Value3 = 23
DECLARE @RelationId Int32
SET     @RelationId = 2

INSERT INTO `UpdatedEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`RelationId`
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 3
DECLARE @Value1 Int32
SET     @Value1 = 31
DECLARE @Value2 Int32
SET     @Value2 = 32
DECLARE @Value3 Int32
SET     @Value3 = 33
DECLARE @RelationId Int32
SET     @RelationId = 3

INSERT INTO `UpdatedEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`RelationId`
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

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
DECLARE @id Int32
SET     @id = 0
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value3 Int32
SET     @Value3 = 0

INSERT INTO `NewEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 1
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value3 Int32
SET     @Value3 = 1

INSERT INTO `NewEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 2
DECLARE @Value1 Int32
SET     @Value1 = 2
DECLARE @Value2 Int32
SET     @Value2 = 2
DECLARE @Value3 Int32
SET     @Value3 = 2

INSERT INTO `NewEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Int32
SET     @id = 3
DECLARE @Value1 Int32
SET     @Value1 = 3
DECLARE @Value2 Int32
SET     @Value2 = 3
DECLARE @Value3 Int32
SET     @Value3 = 3

INSERT INTO `NewEntities`
(
	`id`,
	`Value1`,
	`Value2`,
	`Value3`
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

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

