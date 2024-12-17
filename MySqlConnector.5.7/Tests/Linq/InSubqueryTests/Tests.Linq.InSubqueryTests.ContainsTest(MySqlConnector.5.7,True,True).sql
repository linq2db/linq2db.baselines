BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				1 = `c_1`.`ParentID`
		)
			THEN 1
		ELSE 0
	END as `c1`

