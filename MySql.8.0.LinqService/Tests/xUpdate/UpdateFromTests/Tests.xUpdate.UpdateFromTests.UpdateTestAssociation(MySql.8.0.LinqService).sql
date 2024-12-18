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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `UpdateRelation`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `UpdateRelation`
(
	`id`            INT NOT NULL,
	`RelatedValue1` INT NOT NULL,
	`RelatedValue2` INT NOT NULL,
	`RelatedValue3` INT NOT NULL,

	CONSTRAINT `PK_UpdateRelation` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 0
DECLARE @RelatedValue1 Int32
SET     @RelatedValue1 = 1
DECLARE @RelatedValue2 Int32
SET     @RelatedValue2 = 2
DECLARE @RelatedValue3 Int32
SET     @RelatedValue3 = 3

INSERT INTO `UpdateRelation`
(
	`id`,
	`RelatedValue1`,
	`RelatedValue2`,
	`RelatedValue3`
)
VALUES
(
	@id,
	@RelatedValue1,
	@RelatedValue2,
	@RelatedValue3
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 1
DECLARE @RelatedValue1 Int32
SET     @RelatedValue1 = 11
DECLARE @RelatedValue2 Int32
SET     @RelatedValue2 = 12
DECLARE @RelatedValue3 Int32
SET     @RelatedValue3 = 13

INSERT INTO `UpdateRelation`
(
	`id`,
	`RelatedValue1`,
	`RelatedValue2`,
	`RelatedValue3`
)
VALUES
(
	@id,
	@RelatedValue1,
	@RelatedValue2,
	@RelatedValue3
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 2
DECLARE @RelatedValue1 Int32
SET     @RelatedValue1 = 21
DECLARE @RelatedValue2 Int32
SET     @RelatedValue2 = 22
DECLARE @RelatedValue3 Int32
SET     @RelatedValue3 = 23

INSERT INTO `UpdateRelation`
(
	`id`,
	`RelatedValue1`,
	`RelatedValue2`,
	`RelatedValue3`
)
VALUES
(
	@id,
	@RelatedValue1,
	@RelatedValue2,
	@RelatedValue3
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 3
DECLARE @RelatedValue1 Int32
SET     @RelatedValue1 = 31
DECLARE @RelatedValue2 Int32
SET     @RelatedValue2 = 32
DECLARE @RelatedValue3 Int32
SET     @RelatedValue3 = 33

INSERT INTO `UpdateRelation`
(
	`id`,
	`RelatedValue1`,
	`RelatedValue2`,
	`RelatedValue3`
)
VALUES
(
	@id,
	@RelatedValue1,
	@RelatedValue2,
	@RelatedValue3
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`UpdatedEntities` `v`
		LEFT JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id` AND `v`.`RelationId` IS NOT NULL
SET
	`v`.`Value1` = `a_Relation`.`RelatedValue3`
WHERE
	`a_Relation`.`RelatedValue1` = 11 AND `a_Relation`.`RelatedValue1` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`v`.`Value1`
FROM
	`UpdatedEntities` `v`
		LEFT JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id` AND `v`.`RelationId` IS NOT NULL
WHERE
	`a_Relation`.`RelatedValue1` = 11 AND `a_Relation`.`RelatedValue1` IS NOT NULL
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `UpdateRelation`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `UpdatedEntities`

