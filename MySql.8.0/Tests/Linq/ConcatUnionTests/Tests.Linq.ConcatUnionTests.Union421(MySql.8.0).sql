BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

