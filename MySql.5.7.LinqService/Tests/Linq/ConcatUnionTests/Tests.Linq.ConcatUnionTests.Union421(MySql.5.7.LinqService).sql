BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p_2`.`val`
FROM
	(
		SELECT
			`p`.`ParentID`,
			CAST(1 AS SIGNED) as `val`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`p_1`.`ParentID`,
			CAST(0 AS SIGNED) as `val`
		FROM
			`Parent` `p_1`
		UNION
		SELECT
			`ch`.`ParentID`,
			CAST(0 AS SIGNED) as `c1`
		FROM
			`Child` `ch`
	) `p_2`

