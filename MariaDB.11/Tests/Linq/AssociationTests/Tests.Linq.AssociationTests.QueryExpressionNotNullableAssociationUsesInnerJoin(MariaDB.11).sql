-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`a_Client2`.`Name`
FROM
	`ExpressionAssociationService` `s`
		INNER JOIN `ExpressionAssociationClient` `a_Client2` ON `a_Client2`.`Id` = `s`.`IdClient`

