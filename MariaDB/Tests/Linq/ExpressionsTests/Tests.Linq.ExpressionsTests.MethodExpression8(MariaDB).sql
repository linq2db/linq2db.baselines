BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = Cast(Floor(Floor(Cast(`ch`.`ChildID` as Decimal(29, 10)) / 10)) as SIGNED)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

