BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 0

SELECT
	Char_Length(`p`.`FirstName`) + @p
FROM
	`Person` `p`

