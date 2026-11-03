-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @suffix VarChar(1) -- String
SET     @suffix = '-'

SELECT
	CONCAT(`r`.`Plain`, `r`.`Conv`, Coalesce(@suffix, ''))
FROM
	`PlainAndConvertedUnicodeRow` `r`
LIMIT 2

