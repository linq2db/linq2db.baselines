BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`s`.`FirstName`,
	`s`.`LastName`,
	`s`.`FullName`
FROM
	(
		SELECT
			`p`.`FirstName`,
			Concat(`p`.`LastName`, ', ', `p`.`FirstName`) as `LastName`,
			Concat(`p`.`LastName`, ', ', `p`.`FirstName`, ' (', Coalesce(`p`.`MiddleName`, ''), ' + ', Coalesce(`p`.`MiddleName`, ''), ')') as `FullName`
		FROM
			`Person` `p`
	) `s`
WHERE
	`s`.`FirstName` <> '' OR `s`.`LastName` <> '' OR `s`.`FullName` <> ''
ORDER BY
	`s`.`FirstName`,
	`s`.`LastName`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

