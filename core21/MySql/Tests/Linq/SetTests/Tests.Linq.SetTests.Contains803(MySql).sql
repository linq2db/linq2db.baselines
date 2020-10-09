BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `ch` ON `p`.`ParentID` = `ch`.`ParentID`
		INNER JOIN `GrandChild` `gc` ON `ch`.`ChildID` = `gc`.`ChildID`
WHERE
	(1 = 1 AND `ch`.`ChildID` = 11 AND `gc`.`GrandChildID` = 111 OR 1 = 2 AND `ch`.`ChildID` = 21 AND `gc`.`GrandChildID` = 211)

