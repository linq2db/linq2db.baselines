﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	(
		SELECT 'Janet' AS `item`
		UNION ALL
		SELECT 'Doe'
		UNION ALL
		SELECT 'John'
		UNION ALL
		SELECT 'Doe') `n`
		INNER JOIN `Person` `p` ON `n`.`item` = `p`.`LastName`

