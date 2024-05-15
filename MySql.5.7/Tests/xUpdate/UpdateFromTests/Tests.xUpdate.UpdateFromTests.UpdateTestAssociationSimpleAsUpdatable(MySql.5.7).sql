BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `UpdatedEntities`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `UpdateRelation`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `UpdateRelation`
(
	`id`            INT NOT NULL,
	`RelatedValue1` INT NOT NULL,
	`RelatedValue2` INT NOT NULL,
	`RelatedValue3` INT NOT NULL,

	CONSTRAINT `PK_UpdateRelation` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `UpdateRelation`
(
	`id`,
	`RelatedValue1`,
	`RelatedValue2`,
	`RelatedValue3`
)
VALUES
(0,1,2,3),
(1,11,12,13),
(2,21,22,23),
(3,31,32,33)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`UpdatedEntities` `v`
		LEFT JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id`
SET
	`v`.`Value1` = `v`.`Value1` + `v`.`Value2` + `v`.`Value3`,
	`v`.`Value2` = `v`.`Value1` + `v`.`Value2` + `v`.`Value3`,
	`v`.`Value3` = 1
WHERE
	`a_Relation`.`RelatedValue1` = 11

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`v`.`Value1`,
	`v`.`Value2`,
	`v`.`Value3`
FROM
	`UpdatedEntities` `v`
		LEFT JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id`
WHERE
	`a_Relation`.`RelatedValue1` = 11
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `UpdateRelation`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `UpdatedEntities`

