-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `t1`
		CROSS JOIN `Child` `c_1`
		INNER JOIN `Parent` `a_Parent1` ON `c_1`.`ParentID` = `a_Parent1`.`ParentID`
WHERE
	`t1`.`ParentID` = `a_Parent1`.`ParentID`
ORDER BY
	`t1`.`ParentID`,
	`c_1`.`ChildID`

