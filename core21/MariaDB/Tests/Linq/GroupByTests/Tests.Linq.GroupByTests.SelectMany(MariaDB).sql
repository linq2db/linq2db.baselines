BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`keyParam`.`ParentID`, 
	`keyParam`.`ChildID`
FROM
	( 
		SELECT 
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		GROUP BY
			`t1`.`ParentID`
	) `cp`
		INNER JOIN `Child` `keyParam` ON `cp`.`ParentID` = `keyParam`.`ParentID`

