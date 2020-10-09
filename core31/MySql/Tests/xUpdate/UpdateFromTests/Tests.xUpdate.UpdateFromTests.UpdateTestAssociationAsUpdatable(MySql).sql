﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `UpdatedEntities`
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

CREATE TABLE `UpdateRelation`
(
	`id`            INT NOT NULL,
	`RelatedValue1` INT NOT NULL,
	`RelatedValue2` INT NOT NULL,
	`RelatedValue3` INT NOT NULL,

	CONSTRAINT `PK_UpdateRelation` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

UPDATE
	`UpdatedEntities` `v`
		LEFT JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id`
SET
	`v`.`Value1` = `a_Relation`.`RelatedValue3`
WHERE
	`a_Relation`.`RelatedValue1` = 11

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`v`.`Value1`
FROM
	`UpdatedEntities` `v`
		LEFT JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id`
WHERE
	`a_Relation`.`RelatedValue1` = 11
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `UpdateRelation`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `UpdatedEntities`

