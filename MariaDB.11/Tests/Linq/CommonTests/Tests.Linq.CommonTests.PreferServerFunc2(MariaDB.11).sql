BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = 0

SELECT
	Char_Length(`p`.`FirstName`) + @p
FROM
	`Person` `p`

