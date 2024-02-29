BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 'John' AS `item` FROM DUAL
				UNION ALL
				SELECT 'Not John' FROM DUAL) `y`
		WHERE
			`y`.`item` = `x`.`FirstName`
	)

