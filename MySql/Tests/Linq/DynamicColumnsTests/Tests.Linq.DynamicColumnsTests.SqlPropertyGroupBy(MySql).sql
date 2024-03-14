BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`FirstName`,
	Count(*)
FROM
	`Person` `p`
GROUP BY
	`p`.`FirstName`

