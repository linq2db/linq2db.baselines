-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	`ConvertedConcatTitleRow` `p`
WHERE
	(CONCAT(`p`.`Conv`, `p`.`Title`)) = @bound

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	`ConvertedConcatTitleRow` `p`
WHERE
	@bound = (CONCAT(`p`.`Conv`, `p`.`Title`))

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	`ConvertedConcatTitleRow` `p`
WHERE
	(CONCAT(`p`.`Conv`, `p`.`Title`)) IN ('x:c1T')

