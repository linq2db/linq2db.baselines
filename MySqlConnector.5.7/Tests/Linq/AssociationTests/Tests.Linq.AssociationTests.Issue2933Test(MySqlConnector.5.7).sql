BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`Id`,
	(
		SELECT
			`a_PetIds`.`Name`
		FROM
			`Issue2933Pet` `a_PetIds`
		WHERE
			`a_Person`.`Id` = `a_PetIds`.`PersonId`
		LIMIT 1
	)
FROM
	`Issue2933Car` `x`
		LEFT JOIN `Issue2933Person` `a_Person` ON `x`.`PersonId` = `a_Person`.`Id`

