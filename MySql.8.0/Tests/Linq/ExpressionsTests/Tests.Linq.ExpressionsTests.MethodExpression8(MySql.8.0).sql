-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = CAST(Floor(CAST(`t1`.`ChildID` AS DOUBLE) / 10) AS SIGNED)
WHERE
	`t1`.`ParentID` = `p`.`ParentID`

