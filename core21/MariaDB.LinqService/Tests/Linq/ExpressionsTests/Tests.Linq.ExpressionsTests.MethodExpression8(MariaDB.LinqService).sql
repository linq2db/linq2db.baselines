BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`ch`.`ParentID`, 
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = Floor(Cast(`ch`.`ChildID` as Decimal(29,10)) / 10)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

