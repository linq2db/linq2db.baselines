-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`LastName`,
	`t1`.`FullName`
FROM
	(
		SELECT
			`p`.`FirstName`,
			Concat(`p`.`LastName`, ', ', `p`.`FirstName`) as `LastName`,
			Concat(`p`.`LastName`, ', ', `p`.`FirstName`, ' (', Coalesce(`p`.`MiddleName`, ''), ' + ', Coalesce(`p`.`MiddleName`, ''), ')') as `FullName`
		FROM
			`Person` `p`
	) `t1`
WHERE
	`t1`.`FirstName` <> '' OR `t1`.`LastName` <> '' OR
	`t1`.`FullName` <> ''
ORDER BY
	`t1`.`FirstName`,
	`t1`.`LastName`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

