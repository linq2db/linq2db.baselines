BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`,
	(
		SELECT
			`p`.`ParentID`
		FROM
			`GrandChild` `p`
		LIMIT 3
	) `p_1`
WHERE
	`c_1`.`ParentID` = `p_1`.`ParentID`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`,
	(
		SELECT
			`p`.`ParentID`
		FROM
			`GrandChild` `p`
		LIMIT 12, 3
	) `p_1`
WHERE
	`c_1`.`ParentID` = `p_1`.`ParentID`

