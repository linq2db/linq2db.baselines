BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `t1` ON 1=1
WHERE
	`p`.`ParentID` = `t1`.`ParentID`

