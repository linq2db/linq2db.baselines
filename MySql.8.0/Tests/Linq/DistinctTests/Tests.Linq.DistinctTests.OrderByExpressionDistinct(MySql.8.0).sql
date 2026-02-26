-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x_1`.`MiddleName`,
	`x_1`.`LastName`
FROM
	(
		SELECT DISTINCT
			`x`.`MiddleName`,
			NULLIF(`x`.`LastName`, 'Pupkin') as `LastName`
		FROM
			`Person` `x`
	) `x_1`
ORDER BY
	Coalesce(`x_1`.`MiddleName`, '-2') DESC

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

