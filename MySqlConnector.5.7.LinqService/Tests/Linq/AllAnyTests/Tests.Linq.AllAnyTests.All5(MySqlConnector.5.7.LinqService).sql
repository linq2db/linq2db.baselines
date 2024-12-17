BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @n Int32
SET     @n = 3

SELECT
	CASE
		WHEN  NOT EXISTS (
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

