BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`PersonID`,
	`t1`.`FirstName`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`,
	Concat(`t1`.`LastName`, ', ', `t1`.`FirstName`),
	(
		SELECT
			Count(*)
		FROM
			`Doctor` `d`
		WHERE
			`d`.`PersonID` = `t1`.`PersonID`
	)
FROM
	`Person` `t1`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`i`.`PersonID`,
	`i`.`FirstName`,
	`i`.`LastName`,
	`i`.`MiddleName`,
	`i`.`Gender`,
	Concat(`i`.`LastName`, ', ', `i`.`FirstName`),
	(
		SELECT
			Count(*)
		FROM
			`Doctor` `d`
		WHERE
			`d`.`PersonID` = `i`.`PersonID`
	)
FROM
	`Person` `i`
WHERE
	(Concat(`i`.`LastName`, ', ', `i`.`FirstName`) IS NULL OR Concat(`i`.`LastName`, ', ', `i`.`FirstName`) <> 'Pupkin, John')

