-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @args Int32
SET     @args = 1

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
				SELECT * FROM Person WHERE PersonID = @args
			) `s`
		WHERE
			`s`.`PersonID` = `p`.`PersonID`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @args Int32
SET     @args = 2

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
				SELECT * FROM Person WHERE PersonID = @args
			) `s`
		WHERE
			`s`.`PersonID` = `p`.`PersonID`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @args Int32
SET     @args = 1

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
				SELECT * FROM Person WHERE PersonID = @args
			) `s`
		WHERE
			`s`.`PersonID` = `p`.`PersonID`
	)

