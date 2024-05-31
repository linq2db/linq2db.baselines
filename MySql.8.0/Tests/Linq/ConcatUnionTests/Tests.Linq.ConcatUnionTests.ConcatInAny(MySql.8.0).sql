BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				`p`.`ParentID`
			FROM
				`Parent` `p`
			UNION ALL
			SELECT
				`p_1`.`ParentID`
			FROM
				`Parent` `p_1`
		)
			THEN 1
		ELSE 0
	END as `c1`

