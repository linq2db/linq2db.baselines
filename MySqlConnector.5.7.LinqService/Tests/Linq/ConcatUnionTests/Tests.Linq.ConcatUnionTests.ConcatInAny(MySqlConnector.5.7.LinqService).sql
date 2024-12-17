BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN  EXISTS (
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

