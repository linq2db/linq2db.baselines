-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @suffix VarChar(1) -- String
SET     @suffix = '-'

SELECT
	CONCAT(`r`.`Plain`, `r`.`Conv`, Coalesce(@suffix, ''))
FROM
	`PlainAndConvertedUnicodeRow` `r`
LIMIT 2

