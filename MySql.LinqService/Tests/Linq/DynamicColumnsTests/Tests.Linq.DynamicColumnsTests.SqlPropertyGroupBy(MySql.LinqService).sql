BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`FirstName`,
	COUNT(*)
FROM
	`Person` `p`
GROUP BY
	`p`.`FirstName`

