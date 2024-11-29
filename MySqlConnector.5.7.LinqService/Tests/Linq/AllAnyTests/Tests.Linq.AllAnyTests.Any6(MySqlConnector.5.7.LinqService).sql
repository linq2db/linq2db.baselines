BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` > 3
		)
			THEN 1
		ELSE 0
	END as `c1`

