BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p_1`.`FirstName`,
	`p_1`.`ID`,
	`p_1`.`LastName`,
	`p_1`.`MiddleName`,
	`p_1`.`Gender`
FROM
	(
		SELECT
			LOCATE('Jo', `p`.`FirstName`) > 0 as `Field1`,
			`p`.`FirstName`,
			`p`.`PersonID` as `ID`,
			`p`.`LastName`,
			`p`.`MiddleName`,
			`p`.`Gender`
		FROM
			`Person` `p`
	) `p_1`
WHERE
	`p_1`.`Field1`
ORDER BY
	`p_1`.`Field1`

