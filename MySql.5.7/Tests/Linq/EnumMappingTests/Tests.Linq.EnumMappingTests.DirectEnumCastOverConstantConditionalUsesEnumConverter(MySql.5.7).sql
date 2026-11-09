-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @gender VarChar(1) -- AnsiString
SET     @gender = 'M'

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	@gender = CASE
		WHEN `p`.`PersonID` > 2 THEN 'M'
		ELSE 'F'
	END
ORDER BY
	`p`.`PersonID`

