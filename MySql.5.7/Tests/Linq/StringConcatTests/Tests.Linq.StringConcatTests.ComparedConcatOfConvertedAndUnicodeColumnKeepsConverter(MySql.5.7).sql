-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	`ConvertedConcatTitleRow` `p`
WHERE
	(CONCAT(`p`.`Conv`, `p`.`Title`)) = @bound

