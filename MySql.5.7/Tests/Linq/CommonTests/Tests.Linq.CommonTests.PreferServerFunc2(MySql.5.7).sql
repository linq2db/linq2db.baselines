BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 0

SELECT
	Char_Length(`p`.`FirstName`) + @p
FROM
	`Person` `p`

