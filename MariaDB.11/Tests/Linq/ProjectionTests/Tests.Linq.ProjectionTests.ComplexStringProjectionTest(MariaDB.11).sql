-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @data VarChar -- String
SET     @data = NULL

INSERT INTO `StringTestTable`
(
	`ID`,
	`Data`
)
VALUES
(
	2,
	@data
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ID`,
	`t`.`Data`
FROM
	`StringTestTable` `t`
WHERE
	`t`.`ID` = 2
LIMIT 2

