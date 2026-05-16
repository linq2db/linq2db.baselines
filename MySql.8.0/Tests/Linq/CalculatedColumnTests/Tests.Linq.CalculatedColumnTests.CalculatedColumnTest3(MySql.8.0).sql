-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Doctor` `d_1`
		WHERE
			`d_1`.`PersonID` = `t`.`PersonID`
	),
	`t`.`PersonID`,
	`t`.`FirstName`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`,
	`t`.`FullName`,
	`t`.`FullName`,
	`t`.`DoctorCount`
FROM
	(
		SELECT
			`i`.`PersonID`,
			`i`.`FirstName`,
			`i`.`LastName`,
			`i`.`MiddleName`,
			`i`.`Gender`,
			CONCAT(`i`.`LastName`, ', ', `i`.`FirstName`) as `FullName`,
			(
				SELECT
					COUNT(*)
				FROM
					`Doctor` `d`
				WHERE
					`d`.`PersonID` = `i`.`PersonID`
			) as `DoctorCount`
		FROM
			`Person` `i`
		WHERE
			`i`.`FirstName` <> 'John'
	) `t`

