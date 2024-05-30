BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`a_PersonDoctor`.`FirstName`
FROM
	`Doctor` `d`
		INNER JOIN `Person` `a_PersonDoctor` ON `d`.`PersonID` = `a_PersonDoctor`.`PersonID`

