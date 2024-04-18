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
			Max(`t1`.`ChildID`)
		FROM
			`Child` `t1`
		GROUP BY
			`t1`.`ParentID`
	)

