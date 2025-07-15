BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`gc`.`ParentID`,
	`gc`.`ChildID`,
	`gc`.`GrandChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `gc` ON `p`.`ParentID` = `gc`.`ParentID`
WHERE
	`gc`.`ChildID` = 22

