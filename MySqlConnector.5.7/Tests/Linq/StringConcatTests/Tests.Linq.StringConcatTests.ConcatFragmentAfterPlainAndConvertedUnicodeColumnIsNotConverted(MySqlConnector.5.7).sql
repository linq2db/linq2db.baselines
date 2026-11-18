-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @suffix VarChar(1) -- String
SET     @suffix = '-'

SELECT
	CONCAT(`r`.`Plain`, `r`.`Conv`, Coalesce(@suffix, ''))
FROM
	`PlainAndConvertedUnicodeRow` `r`
LIMIT 2

