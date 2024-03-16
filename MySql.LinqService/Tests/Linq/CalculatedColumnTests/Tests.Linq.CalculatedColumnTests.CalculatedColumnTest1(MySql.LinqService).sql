BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`i`.`PersonID`,
	`i`.`FirstName`,
	`i`.`LastName`,
	`i`.`MiddleName`,
	`i`.`Gender`,
	Concat(`i`.`LastName`, ', ', `i`.`FirstName`),
	Concat(`i`.`LastName`, ', ', `i`.`FirstName`),
	(
		SELECT
			Count(*)
		FROM
			`Doctor` `t1`
		WHERE
			`t1`.`PersonID` = `i`.`PersonID`
	)
FROM
	`Person` `i`
WHERE
	`i`.`FirstName` <> 'John'

