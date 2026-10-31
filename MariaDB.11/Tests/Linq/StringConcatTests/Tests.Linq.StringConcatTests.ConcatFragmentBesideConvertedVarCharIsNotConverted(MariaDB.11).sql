-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @dash VarChar(1) -- String
SET     @dash = '-'

SELECT
	CONCAT(`p`.`Conv`, '|', Coalesce(@dash, ''))
FROM
	`ConvertedConcatRow` `p`
LIMIT 2

