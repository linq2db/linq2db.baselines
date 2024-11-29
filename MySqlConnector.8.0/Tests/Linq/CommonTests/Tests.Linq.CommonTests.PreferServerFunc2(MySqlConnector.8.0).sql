BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Length Int32
SET     @Length = 0

SELECT
	Char_Length(`p`.`FirstName`) + @Length
FROM
	`Person` `p`

