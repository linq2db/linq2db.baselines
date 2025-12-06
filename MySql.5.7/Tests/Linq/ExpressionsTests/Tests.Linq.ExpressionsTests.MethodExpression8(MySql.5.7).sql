-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = CAST(Floor(CAST(`ch`.`ChildID` AS DECIMAL(29, 10)) / 10) AS SIGNED)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

