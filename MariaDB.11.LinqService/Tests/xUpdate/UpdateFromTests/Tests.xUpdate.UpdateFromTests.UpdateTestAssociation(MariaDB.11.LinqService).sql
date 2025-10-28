BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

UPDATE
	`UpdatedEntities` `v`
		INNER JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id`
SET
	`v`.`Value1` = `a_Relation`.`RelatedValue3`
WHERE
	`a_Relation`.`RelatedValue1` = 11

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`v`.`Value1`
FROM
	`UpdatedEntities` `v`
		INNER JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id`
WHERE
	`a_Relation`.`RelatedValue1` = 11
LIMIT 1

