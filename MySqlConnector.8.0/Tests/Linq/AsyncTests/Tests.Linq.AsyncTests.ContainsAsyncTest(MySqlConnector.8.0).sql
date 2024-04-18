BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @ID Int32
SET     @ID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Person` `t1`
			WHERE
				`t1`.`PersonID` = @ID
		)
			THEN 1
		ELSE 0
	END as `c1`

