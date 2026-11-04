-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CONCAT(`r`.`Plain`, `r`.`Conv`)
FROM
	`PlainAndConvertedUnicodeRow` `r`
ORDER BY
	`r`.`Id`
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeRow` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) = @read

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeRow` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) <> @read

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CASE
		WHEN 'A-x:n1' IN (
			SELECT
				CONCAT(`r`.`Plain`, `r`.`Conv`)
			FROM
				`PlainAndConvertedUnicodeRow` `r`
		)
			THEN 1
		ELSE 0
	END as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeRow` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) IN ('A-x:n1')

