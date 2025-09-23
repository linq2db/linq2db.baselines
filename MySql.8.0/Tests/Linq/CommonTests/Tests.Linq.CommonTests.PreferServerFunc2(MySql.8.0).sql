BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Length Int32
SET     @Length = 0

SELECT
	CHAR_LENGTH(`p`.`FirstName`) + @Length
FROM
	`Person` `p`

