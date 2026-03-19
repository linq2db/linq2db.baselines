-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
		INNER JOIN `Parent` `p` ON `p`.`ParentID` = CAST(Floor(CAST(`t1`.`ChildID` AS DECIMAL(29, 10)) / 10) AS SIGNED)
WHERE
	`t1`.`ParentID` = `p`.`ParentID`

