-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`FirstName`,
	RANK() OVER(ORDER BY (`x`.`PersonID` = 2))
FROM
	`Person` `x`

