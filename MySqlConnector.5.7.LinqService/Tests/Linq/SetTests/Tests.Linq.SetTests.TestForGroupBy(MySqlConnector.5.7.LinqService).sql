BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`,
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (2)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`,
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3)

