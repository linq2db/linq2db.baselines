BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ParentID`,
	`t`.`ChildID`
FROM
	`Child` `t`
WHERE
	`t`.`ParentID` IN (
		SELECT
			`t1`.`ParentID`
		FROM
			(
				SELECT
					`x`.`ParentID`
				FROM
					`Child` `x`
				GROUP BY
					`x`.`ParentID`
				ORDER BY
					MAX(`x`.`ChildID`) DESC
				LIMIT 2
			) `t1`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

