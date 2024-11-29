BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`Child` `t1`
		)
			THEN 1
		ELSE 0
	END as `c1`

