-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

