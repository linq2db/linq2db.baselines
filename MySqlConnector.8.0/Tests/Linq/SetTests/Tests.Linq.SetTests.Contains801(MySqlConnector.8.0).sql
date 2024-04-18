BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`ch`.`ChildID`,
	`gc`.`GrandChildID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `ch` ON `p`.`ParentID` = `ch`.`ParentID`
		INNER JOIN `GrandChild` `gc` ON `ch`.`ChildID` = `gc`.`ChildID`
WHERE
	`ch`.`ChildID` = 21 AND `gc`.`GrandChildID` = 211

