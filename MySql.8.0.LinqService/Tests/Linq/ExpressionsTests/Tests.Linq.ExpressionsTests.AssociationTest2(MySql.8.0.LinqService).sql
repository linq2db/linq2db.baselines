BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`gc`.`ParentID`,
	`gc`.`ChildID`,
	`gc`.`GrandChildID`
FROM
	`Parent` `cp`
		INNER JOIN `GrandChild` `gc` ON `cp`.`ParentID` = `gc`.`ParentID` AND `gc`.`ChildID` = 22

