BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`,
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (2)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`,
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3)

