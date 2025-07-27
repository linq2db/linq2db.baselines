BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = CAST(Floor(CAST(`ch`.`ChildID` AS DOUBLE) / CAST(10 AS DOUBLE)) AS SIGNED)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

