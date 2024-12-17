BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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

