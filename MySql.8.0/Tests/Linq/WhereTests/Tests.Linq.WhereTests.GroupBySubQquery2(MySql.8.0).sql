BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
WHERE
	`x`.`ChildID` IN (
		SELECT
			`t1`.`MAX_1`
		FROM
			(
				SELECT
					MAX(`x_1`.`ChildID`) as `MAX_1`
				FROM
					`Child` `x_1`
				GROUP BY
					`x_1`.`ParentID`
			) `t1`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
WHERE
	`x`.`ChildID` IN (
		SELECT
			`t1`.`MAX_1`
		FROM
			(
				SELECT
					MAX(`x_1`.`ChildID`) as `MAX_1`
				FROM
					`Child` `x_1`
				GROUP BY
					`x_1`.`ParentID`
			) `t1`
	)

