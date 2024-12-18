BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UpdatedEntities`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UpdateRelation`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `UpdateRelation`
(
	`id`            INT NOT NULL,
	`RelatedValue1` INT NOT NULL,
	`RelatedValue2` INT NOT NULL,
	`RelatedValue3` INT NOT NULL,

	CONSTRAINT `PK_UpdateRelation` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

UPDATE
	`UpdatedEntities` `v`
		LEFT JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id` AND `v`.`RelationId` IS NOT NULL
SET
	`v`.`Value1` = `a_Relation`.`RelatedValue3`
WHERE
	`a_Relation`.`RelatedValue1` = 11 AND `a_Relation`.`RelatedValue1` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`v`.`Value1`
FROM
	`UpdatedEntities` `v`
		LEFT JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id` AND `v`.`RelationId` IS NOT NULL
WHERE
	`a_Relation`.`RelatedValue1` = 11 AND `a_Relation`.`RelatedValue1` IS NOT NULL
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UpdateRelation`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `UpdatedEntities`

