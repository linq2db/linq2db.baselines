BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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

