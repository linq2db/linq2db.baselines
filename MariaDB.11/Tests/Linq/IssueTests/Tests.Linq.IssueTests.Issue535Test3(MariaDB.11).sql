-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`cb`.`Id`,
	`cb`.`Name`,
	`cb`.`ContactEmail`,
	`cb`.`Enabled`
FROM
	`CustomerBase` `cb`
WHERE
	`cb`.`ClientType` = 'Client'

