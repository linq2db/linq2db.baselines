BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Length Int32
SET     @Length = 0

SELECT
	CHAR_LENGTH(`p`.`FirstName`) + @Length
FROM
	`Person` `p`

