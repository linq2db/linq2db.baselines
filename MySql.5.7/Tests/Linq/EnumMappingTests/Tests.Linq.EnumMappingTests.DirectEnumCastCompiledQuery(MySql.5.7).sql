-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @Gender
ORDER BY
	`p`.`PersonID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Gender String(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @Gender
ORDER BY
	`p`.`PersonID`

