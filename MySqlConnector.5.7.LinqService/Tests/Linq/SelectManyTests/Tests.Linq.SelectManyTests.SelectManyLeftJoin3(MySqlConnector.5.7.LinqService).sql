BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Parent` `t1`
		LEFT JOIN `Child` `ch` ON 1=1
WHERE
	`t1`.`ParentID` = `ch`.`ParentID`

