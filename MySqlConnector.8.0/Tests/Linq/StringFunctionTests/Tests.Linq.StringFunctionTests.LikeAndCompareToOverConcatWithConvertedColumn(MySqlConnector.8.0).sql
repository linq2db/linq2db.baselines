-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CONCAT(`r`.`Plain`, `r`.`Conv`)
FROM
	`PlainAndConvertedUnicodeTable` `r`
ORDER BY
	`r`.`Id`
LIMIT 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeTable` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) LIKE @read

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeTable` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) = @read

