-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Concat('I-', `x`.`PersonID`),
	`x`.`FirstName`
FROM
	`Person` `x`
UNION ALL
SELECT
	NULL,
	Concat('QUASI-', `x_1`.`FirstName`)
FROM
	`Person` `x_1`

