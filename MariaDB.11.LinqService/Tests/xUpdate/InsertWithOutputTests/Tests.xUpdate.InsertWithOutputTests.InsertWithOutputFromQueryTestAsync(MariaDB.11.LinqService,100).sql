BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @param Int32
SET     @param = 100

SELECT
	`s`.`Id` + @param,
	`s`.`Value` + @param,
	Concat(`s`.`ValueStr`, @param)
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` > 3

