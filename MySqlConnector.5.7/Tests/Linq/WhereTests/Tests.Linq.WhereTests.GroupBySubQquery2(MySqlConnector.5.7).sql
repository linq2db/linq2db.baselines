BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

