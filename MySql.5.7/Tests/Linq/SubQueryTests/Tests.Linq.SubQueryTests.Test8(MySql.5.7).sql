-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` IN (
		SELECT
			`p`.`ParentID`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` = 1
	)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` IN (
		SELECT
			`p`.`ParentID`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` = 2
	)

