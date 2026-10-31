-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @dash VarChar(1) -- String
SET     @dash = '-'

SELECT
	CONCAT(`p`.`Conv`, '|', Coalesce(@dash, ''))
FROM
	`ConvertedConcatRow` `p`
LIMIT 2

