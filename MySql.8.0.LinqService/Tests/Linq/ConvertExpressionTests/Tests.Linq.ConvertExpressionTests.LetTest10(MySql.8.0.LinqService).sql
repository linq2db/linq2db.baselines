BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`Parent` `p`
		)
			THEN 1
		ELSE 0
	END as `c1`

