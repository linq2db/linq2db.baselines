BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`gr`.`FirstName`,
	`gr`.`LastName`,
	SUM(`gr`.`PersonID`)
FROM
	`Person` `gr`
GROUP BY
	`gr`.`FirstName`,
	`gr`.`LastName`

