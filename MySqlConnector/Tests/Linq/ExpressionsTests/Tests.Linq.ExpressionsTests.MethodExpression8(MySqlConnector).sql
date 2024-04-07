BeforeExecute
-- MySqlConnector MySql

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = CAST(Floor(CAST(`ch`.`ChildID` AS Decimal(29, 10)) / 10) AS SIGNED)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

