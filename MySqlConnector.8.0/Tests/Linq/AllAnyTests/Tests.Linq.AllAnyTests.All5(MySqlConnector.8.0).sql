BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @n Int32
SET     @n = 3

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` <= @n
		)
			THEN 1
		ELSE 0
	END as `c1`

