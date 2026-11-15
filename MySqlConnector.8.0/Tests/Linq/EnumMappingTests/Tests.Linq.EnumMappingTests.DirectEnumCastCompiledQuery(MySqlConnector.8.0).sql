-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

