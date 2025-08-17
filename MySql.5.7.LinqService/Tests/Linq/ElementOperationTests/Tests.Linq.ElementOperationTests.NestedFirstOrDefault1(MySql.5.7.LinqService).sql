BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		LIMIT 1
	),
	(
		SELECT
			`t2`.`ChildID`
		FROM
			`Child` `t2`
		LIMIT 1
	)
FROM
	`Parent` `p`

