-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
			COUNT(*)
		FROM
			`Doctor` `d`
		WHERE
			`d`.`PersonID` = `i`.`PersonID`
	)
FROM
	`Person` `i`
WHERE
	`i`.`FirstName` <> 'John'

