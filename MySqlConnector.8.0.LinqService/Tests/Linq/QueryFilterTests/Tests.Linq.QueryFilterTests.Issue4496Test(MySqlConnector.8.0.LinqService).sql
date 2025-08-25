BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT DISTINCT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
		INNER JOIN `Parent` `u` ON `x`.`ParentID` = `u`.`ParentID` AND `u`.`Value1` > 5
WHERE
	`x`.`ChildID` > 30

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT DISTINCT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
		INNER JOIN `Parent` `u` ON `x`.`ParentID` = `u`.`ParentID` AND `u`.`Value1` > 5
WHERE
	`x`.`ChildID` > 30

