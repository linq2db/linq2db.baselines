BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @Length Int32
SET     @Length = 0

SELECT
	CHAR_LENGTH(`p`.`FirstName`) + @Length
FROM
	`Person` `p`

