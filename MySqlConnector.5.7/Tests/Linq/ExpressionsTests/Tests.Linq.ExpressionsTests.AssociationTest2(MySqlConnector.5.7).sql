BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`gc`.`ParentID`,
	`gc`.`ChildID`,
	`gc`.`GrandChildID`
FROM
	`Parent` `cp`
		INNER JOIN `GrandChild` `gc` ON `cp`.`ParentID` = `gc`.`ParentID` AND `gc`.`ChildID` = 22

