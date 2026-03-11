-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ID Int32
SET     @ID = 1

SELECT
	CASE
		WHEN @ID IN (
			SELECT
				`t1`.`PersonID`
			FROM
				`Person` `t1`
		)
			THEN 1
		ELSE 0
	END as `c1`

