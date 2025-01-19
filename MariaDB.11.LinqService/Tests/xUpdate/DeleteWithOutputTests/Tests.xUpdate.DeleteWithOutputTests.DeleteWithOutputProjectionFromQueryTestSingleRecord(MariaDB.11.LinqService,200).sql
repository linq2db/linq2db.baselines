BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`s`.`Id`,
	`s`.`Value`,
	`s`.`ValueStr`
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` = 3

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`TableWithData`
WHERE
	`TableWithData`.`Id` = 3
RETURNING
	`TableWithData`.`Id` + 1,
	Concat(`TableWithData`.`ValueStr`, 1),
	`TableWithData`.`ValueStr` IS NOT NULL

