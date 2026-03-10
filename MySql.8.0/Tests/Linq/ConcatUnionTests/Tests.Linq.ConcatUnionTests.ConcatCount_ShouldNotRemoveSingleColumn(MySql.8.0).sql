-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	(
		SELECT
			CAST(1 AS SIGNED) as `c1`
		FROM
			`Person` `t1`
		UNION ALL
		SELECT
			CAST(1 AS SIGNED) as `c1`
		FROM
			`Parent` `t2`
	) `t3`

