-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	`ConvertedConcatTitleRow` `p`
WHERE
	(CONCAT(`p`.`Conv`, `p`.`Title`)) = @bound

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	`ConvertedConcatTitleRow` `p`
WHERE
	@bound = (CONCAT(`p`.`Conv`, `p`.`Title`))

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`ConvertedConcatTitleRow` `p`
WHERE
	(CONCAT(`p`.`Conv`, `p`.`Title`)) IN ('x:c1T')

