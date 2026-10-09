-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Int32
SET     @value = 1

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID = @value
			) `s`
		WHERE
			`s`.`PersonID` = `p`.`PersonID`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Int32
SET     @value = 1

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID <> @value
			) `s`
		WHERE
			`s`.`PersonID` = `p`.`PersonID`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Int32
SET     @value = 1

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM Person WHERE PersonID = @value
			) `s`
		WHERE
			`s`.`PersonID` = `p`.`PersonID`
	)

