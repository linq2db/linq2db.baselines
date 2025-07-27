BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = CAST(Floor(CAST(`ch`.`ChildID` AS DOUBLE) / CAST(10 AS DOUBLE)) AS SIGNED)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

