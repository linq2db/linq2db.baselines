BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`ParentID`,
	Count(*)
FROM
	`Child` `x`
		INNER JOIN `GrandChild` `y` ON `x`.`ParentID` = `y`.`ParentID` AND `x`.`ChildID` = `y`.`ChildID`
GROUP BY
	`x`.`ParentID`

