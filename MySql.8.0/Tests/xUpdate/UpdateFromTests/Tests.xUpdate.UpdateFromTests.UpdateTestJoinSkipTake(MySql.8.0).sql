BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `UpdatedEntities`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `NewEntities`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `NewEntities`
(
	`id`     INT NOT NULL,
	`Value1` INT NOT NULL,
	`Value2` INT NOT NULL,
	`Value3` INT NOT NULL,

	CONSTRAINT `PK_NewEntities` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `NewEntities`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `UpdatedEntities`

