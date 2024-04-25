BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = 0

SELECT
	Char_Length(`p`.`FirstName`) + @p
FROM
	`Person` `p`

