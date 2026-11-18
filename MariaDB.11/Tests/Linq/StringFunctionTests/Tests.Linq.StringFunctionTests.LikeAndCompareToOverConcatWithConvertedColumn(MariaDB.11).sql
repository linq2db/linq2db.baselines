-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CONCAT(`r`.`Plain`, `r`.`Conv`)
FROM
	`PlainAndConvertedUnicodeTable` `r`
ORDER BY
	`r`.`Id`
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeTable` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) LIKE @read

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeTable` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) = @read

