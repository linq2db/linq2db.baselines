BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `p`,
	`Child` `_`
WHERE
	`_`.`ParentID` + 1 > 1

