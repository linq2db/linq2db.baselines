BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`PersonID`,
	`t1`.`LastName`,
	CASE
		WHEN `t1`.`PersonID` IN (1, 3) THEN 1
		ELSE 0
	END
FROM
	`Person` `t1`
ORDER BY
	CASE
		WHEN `t1`.`PersonID` IN (1, 3) THEN 1
		ELSE 0
	END

