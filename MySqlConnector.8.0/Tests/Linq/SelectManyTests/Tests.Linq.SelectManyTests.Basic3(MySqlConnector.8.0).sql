BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `p`,
	`Child` `_`
WHERE
	`_`.`ParentID` + 1 > 1

