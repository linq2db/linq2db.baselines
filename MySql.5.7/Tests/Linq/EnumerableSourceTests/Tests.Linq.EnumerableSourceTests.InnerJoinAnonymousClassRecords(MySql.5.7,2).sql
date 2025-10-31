-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT 'Janet' AS `Name`
			UNION ALL
			SELECT 'Doe') `n` ON `p`.`LastName` = `n`.`Name`

