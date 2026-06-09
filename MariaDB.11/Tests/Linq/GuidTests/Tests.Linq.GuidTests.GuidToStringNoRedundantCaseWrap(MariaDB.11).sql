-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Lower(CAST(`t`.`Id` AS CHAR(36)))
FROM
	`TableWithGuid` `t`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Id`
FROM
	`TableWithGuid` `t`
WHERE
	Lower(CAST(`t`.`Id` AS CHAR(36))) = 'x'

