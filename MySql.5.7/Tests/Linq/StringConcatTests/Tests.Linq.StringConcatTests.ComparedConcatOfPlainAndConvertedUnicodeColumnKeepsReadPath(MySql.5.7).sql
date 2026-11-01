-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CONCAT(`r`.`Plain`, `r`.`Conv`)
FROM
	`PlainAndConvertedUnicodeRow` `r`
ORDER BY
	`r`.`Id`
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeRow` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) = @read

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeRow` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) <> @read

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	COUNT(*)
FROM
	`PlainAndConvertedUnicodeRow` `r`
WHERE
	(CONCAT(`r`.`Plain`, `r`.`Conv`)) IN ('A-x:n1')

