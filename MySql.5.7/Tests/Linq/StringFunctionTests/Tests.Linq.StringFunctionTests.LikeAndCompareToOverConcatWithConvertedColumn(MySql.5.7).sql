-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CONCAT(`r`.`Plain`, `r`.`Conv`)
FROM
	`PlainAndConvertedUnicodeTable` `r`
ORDER BY
	`r`.`Id`
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeTable` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) LIKE @read

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeTable` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) = @read

