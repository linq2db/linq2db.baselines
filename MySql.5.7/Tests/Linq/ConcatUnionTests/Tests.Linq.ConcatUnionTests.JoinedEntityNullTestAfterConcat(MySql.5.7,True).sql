-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x_1`.`ParentID`
FROM
	(
		SELECT
			`x`.`ParentID`,
			CAST(NULL AS SIGNED) as `Child`
		FROM
			`Parent` `x`
		UNION ALL
		SELECT
			`t1`.`ParentID`,
			`c_1`.`ParentID` as `Child`
		FROM
			`Parent` `t1`
				LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `t1`.`ParentID`
	) `x_1`
WHERE
	`x_1`.`Child` IS NULL

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

