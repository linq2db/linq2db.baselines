-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Parent` `t1`
	) as `Parents`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `t2`
	) as `Children`
LIMIT 2

