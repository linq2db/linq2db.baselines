-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`f`.`ParentID`,
	`f`.`Value1`
FROM
	`Parent` `f`
WHERE
	`f`.`ParentID` >= 1 AND `f`.`ParentID` <= 4

