BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p_2`.`val`
FROM
	(
		SELECT
			`p`.`ParentID` as `id`,
			1 as `val`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`p_1`.`ParentID` as `id`,
			0 as `val`
		FROM
			`Parent` `p_1`
		UNION
		SELECT
			`ch`.`ParentID` as `id`,
			0 as `val`
		FROM
			`Child` `ch`
	) `p_2`

