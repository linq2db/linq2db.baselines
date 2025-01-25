BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN `p`.`FirstName` IS NULL OR Char_Length(`p`.`FirstName`) = 0
			THEN 1
		ELSE 0
	END,
	`p`.`FirstName`,
	CASE
		WHEN `p`.`MiddleName` IS NULL OR Char_Length(`p`.`MiddleName`) = 0
			THEN 1
		ELSE 0
	END,
	`p`.`MiddleName`,
	`p`.`LastName`
FROM
	`Person` `p`

