-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @dash VarChar(1) -- String
SET     @dash = '-'

SELECT
	CONCAT(`p`.`Conv`, '|', Coalesce(@dash, ''))
FROM
	`ConvertedConcatRow` `p`
LIMIT 2

