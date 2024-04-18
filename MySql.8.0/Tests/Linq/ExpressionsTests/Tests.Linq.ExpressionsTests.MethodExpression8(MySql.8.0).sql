BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = Floor(Cast(`ch`.`ChildID` as DOUBLE) / 10)
WHERE
	`ch`.`ParentID` = `p`.`ParentID`

