-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT DISTINCT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` < 4
ORDER BY
	`c_1`.`ChildID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT DISTINCT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` < 4

