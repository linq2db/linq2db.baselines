BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` % 2),
	`p`.`Value1`
FROM
	`Parent` `p`

