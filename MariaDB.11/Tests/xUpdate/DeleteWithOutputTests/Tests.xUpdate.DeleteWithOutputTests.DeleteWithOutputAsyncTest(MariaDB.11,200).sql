-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`s`.`Id`,
	`s`.`Value`,
	`s`.`ValueStr`
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` > 3

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`TableWithData`
WHERE
	`TableWithData`.`Id` > 3
RETURNING
	`TableWithData`.`Id`,
	`TableWithData`.`Value`,
	`TableWithData`.`ValueStr`

