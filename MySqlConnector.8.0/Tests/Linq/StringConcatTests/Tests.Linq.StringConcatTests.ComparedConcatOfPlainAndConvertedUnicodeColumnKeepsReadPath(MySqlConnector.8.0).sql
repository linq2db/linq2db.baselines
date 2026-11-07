-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CONCAT(`r`.`Plain`, `r`.`Conv`)
FROM
	`PlainAndConvertedUnicodeRow` `r`
ORDER BY
	`r`.`Id`
LIMIT 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeRow` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) = @read

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeRow` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) <> @read

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeRow` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) IN ('A-x:n1')

