BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`a_Middle`.`ParentID`, 
	`a_Middle`.`ChildID`, 
	`a_Middle`.`ParentID_1`, 
	`a_Middle`.`ChildID_1`, 
	`a_Middle`.`GrandChildID`
FROM
	`Parent` `t`
		LEFT JOIN ( 
			SELECT 
				`t1`.`ParentID`, 
				`t1`.`ChildID`, 
				`a_Bottom`.`ParentID` as `ParentID_1`, 
				`a_Bottom`.`ChildID` as `ChildID_1`, 
				`a_Bottom`.`GrandChildID`
			FROM
				`Child` `t1`
					LEFT JOIN `GrandChild` `a_Bottom` ON `t1`.`ChildID` = `a_Bottom`.`ChildID`
		) `a_Middle` ON `t`.`ParentID` = `a_Middle`.`ParentID`
WHERE
	`t`.`ParentID` IN (1, 5)
ORDER BY
	`t`.`ParentID`

