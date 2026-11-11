-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @gender String(1) -- AnsiStringFixedLength
SET     @gender = 'F'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CAST(`p`.`Gender` AS CHAR(255)) = @gender

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

