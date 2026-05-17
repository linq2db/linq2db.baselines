-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT 'Janet' AS `item`
			UNION ALL
			SELECT 'Doe'
			UNION ALL
			SELECT 'John'
			UNION ALL
			SELECT 'Doe') `n` ON `p`.`LastName` = `n`.`item`

