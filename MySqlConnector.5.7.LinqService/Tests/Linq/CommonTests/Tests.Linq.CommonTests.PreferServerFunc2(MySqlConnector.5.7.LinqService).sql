BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @Length Int32
SET     @Length = 0

SELECT
	CHAR_LENGTH(`p`.`FirstName`) + @Length
FROM
	`Person` `p`

