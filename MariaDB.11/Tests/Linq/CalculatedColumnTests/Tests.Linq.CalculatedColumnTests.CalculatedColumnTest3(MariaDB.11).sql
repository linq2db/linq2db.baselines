BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Doctor` `d`
		WHERE
			`d`.`PersonID` = `t`.`PersonID`
	),
	`t`.`PersonID`,
	`t`.`FirstName`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`,
	Concat(`t`.`LastName`, ', ', `t`.`FirstName`),
	Concat(`t`.`LastName`, ', ', `t`.`FirstName`),
	(
		SELECT
			COUNT(*)
		FROM
			`Doctor` `d_1`
		WHERE
			`d_1`.`PersonID` = `t`.`PersonID`
	)
FROM
	`Person` `t`
WHERE
	`t`.`FirstName` <> 'John'

