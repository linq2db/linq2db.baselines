﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`UpdatedEntities` `v`
		INNER JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id`
SET
	`v`.`Value1` = `v`.`Value1` + `v`.`Value2` + `v`.`Value3`,
	`v`.`Value2` = `v`.`Value1` + `v`.`Value2` + `v`.`Value3`,
	`v`.`Value3` = 1
WHERE
	`a_Relation`.`RelatedValue1` = 11

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`v`.`Value1`,
	`v`.`Value2`,
	`v`.`Value3`
FROM
	`UpdatedEntities` `v`
		INNER JOIN `UpdateRelation` `a_Relation` ON `v`.`RelationId` = `a_Relation`.`id`
WHERE
	`a_Relation`.`RelatedValue1` = 11
LIMIT 1

