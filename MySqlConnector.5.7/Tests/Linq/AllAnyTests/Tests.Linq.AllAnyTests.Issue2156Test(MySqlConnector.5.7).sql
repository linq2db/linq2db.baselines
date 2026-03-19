-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`,
	`u`.`FirstName`,
	`u`.`PersonID`,
	`u`.`LastName`,
	`u`.`MiddleName`,
	`u`.`Gender`,
	`u`.`FirstName`,
	`u`.`PersonID`,
	`u`.`LastName`,
	`u`.`MiddleName`,
	`u`.`Gender`,
	`u`.`FirstName`,
	`u`.`PersonID`,
	`u`.`LastName`,
	`u`.`MiddleName`,
	`u`.`Gender`,
	(
		SELECT
			`e`.`FirstName`
		FROM
			`Person` `e`
		WHERE
			`u`.`PersonID` = `e`.`PersonID`
		LIMIT 1
	),
	(
		SELECT
			`e_1`.`PersonID`
		FROM
			`Person` `e_1`
		WHERE
			`u`.`PersonID` = `e_1`.`PersonID`
		LIMIT 1
	),
	(
		SELECT
			`e_2`.`LastName`
		FROM
			`Person` `e_2`
		WHERE
			`u`.`PersonID` = `e_2`.`PersonID`
		LIMIT 1
	),
	(
		SELECT
			`e_3`.`MiddleName`
		FROM
			`Person` `e_3`
		WHERE
			`u`.`PersonID` = `e_3`.`PersonID`
		LIMIT 1
	),
	(
		SELECT
			`e_4`.`Gender`
		FROM
			`Person` `e_4`
		WHERE
			`u`.`PersonID` = `e_4`.`PersonID`
		LIMIT 1
	),
	EXISTS(
		SELECT
			*
		FROM
			`Person` `tg`
		WHERE
			`t`.`PersonID` = `tg`.`PersonID` AND `tg`.`FirstName` = 'John'
	)
FROM
	`Person` `t1`
		LEFT JOIN `Patient` `a_Patient` ON `t1`.`PersonID` = `a_Patient`.`PersonID`
		LEFT JOIN `Person` `t` ON `t1`.`PersonID` = `t`.`PersonID` AND `t`.`FirstName` <> 'Nameless One'
		LEFT JOIN `Person` `u` ON `t1`.`PersonID` = `u`.`PersonID`
WHERE
	`a_Patient`.`Diagnosis` <> 'Immortality' OR `a_Patient`.`Diagnosis` IS NULL
ORDER BY
	`u`.`PersonID`

