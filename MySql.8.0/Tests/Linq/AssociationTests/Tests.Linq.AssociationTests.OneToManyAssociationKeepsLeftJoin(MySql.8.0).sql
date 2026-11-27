-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`Id`,
	(
		SELECT
			`a_PetIds`.`Name`
		FROM
			`OneToManyPet` `a_PetIds`
		WHERE
			`a_Person`.`Id` = `a_PetIds`.`PersonId`
		LIMIT 1
	)
FROM
	`OneToManyCar` `x`
		LEFT JOIN `OneToManyPerson` `a_Person` ON `x`.`PersonId` = `a_Person`.`Id`

