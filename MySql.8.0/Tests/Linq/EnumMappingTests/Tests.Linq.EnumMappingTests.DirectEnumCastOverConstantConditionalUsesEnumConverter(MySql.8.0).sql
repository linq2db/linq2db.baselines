-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

