-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	(
		SELECT 'Janet' AS `item`, 'Janet' AS `item0`
		UNION ALL
		SELECT 'Doe', 'Doe'
		UNION ALL
		SELECT 'John', 'John'
		UNION ALL
		SELECT 'Doe', 'Doe') `n`
		INNER JOIN `Person` `p` ON `n`.`item` = `p`.`LastName`

