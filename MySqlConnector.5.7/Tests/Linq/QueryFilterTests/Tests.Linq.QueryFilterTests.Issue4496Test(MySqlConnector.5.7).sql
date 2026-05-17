-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
		INNER JOIN `Parent` `u` ON `x`.`ParentID` = `u`.`ParentID` AND `u`.`Value1` > 5
WHERE
	`x`.`ChildID` > 30

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
		INNER JOIN `Parent` `u` ON `x`.`ParentID` = `u`.`ParentID` AND `u`.`Value1` > 5
WHERE
	`x`.`ChildID` > 30

