BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Length Int32
SET     @Length = 0

SELECT
	CHAR_LENGTH(`p`.`FirstName`) + @Length
FROM
	`Person` `p`

