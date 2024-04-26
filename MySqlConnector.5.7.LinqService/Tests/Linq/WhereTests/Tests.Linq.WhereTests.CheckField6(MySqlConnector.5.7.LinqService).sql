BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`Value1`,
	`p`.`Value1` * 100,
	`p`.`ParentID`,
	`p`.`Value1` * 100
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1 AND `p`.`Value1` * 100 > 0

