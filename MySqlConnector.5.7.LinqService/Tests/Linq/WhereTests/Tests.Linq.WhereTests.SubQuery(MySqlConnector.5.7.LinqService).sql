BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`ch`.`ParentID` * 1000
FROM
	`Child` `ch`
WHERE
	`ch`.`ParentID` * 1000 > 2000

