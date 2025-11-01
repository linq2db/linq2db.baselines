-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
ORDER BY
	`x`.`ChildID` DESC,
	`x`.`ChildID` % 2 DESC

