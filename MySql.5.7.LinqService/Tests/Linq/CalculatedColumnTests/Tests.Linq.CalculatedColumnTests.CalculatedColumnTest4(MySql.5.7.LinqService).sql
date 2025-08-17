BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`a_PersonDoctor`.`PersonID`,
	`a_PersonDoctor`.`FirstName`,
	`a_PersonDoctor`.`LastName`,
	`a_PersonDoctor`.`MiddleName`,
	`a_PersonDoctor`.`Gender`,
	Concat(`a_PersonDoctor`.`LastName`, ', ', `a_PersonDoctor`.`FirstName`),
	Concat(`a_PersonDoctor`.`LastName`, ', ', `a_PersonDoctor`.`FirstName`),
	(
		SELECT
			COUNT(*)
		FROM
			`Doctor` `d_1`
		WHERE
			`d_1`.`PersonID` = `a_PersonDoctor`.`PersonID`
	)
FROM
	`Doctor` `d`
		INNER JOIN `Person` `a_PersonDoctor` ON `d`.`PersonID` = `a_PersonDoctor`.`PersonID`

