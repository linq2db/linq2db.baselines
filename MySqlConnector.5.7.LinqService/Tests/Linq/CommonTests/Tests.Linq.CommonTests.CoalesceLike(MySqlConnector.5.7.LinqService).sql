BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN CASE
			WHEN `p`.`FirstName` IS NULL
				THEN NULL
			ELSE `p`.`FirstName` LIKE 'Jo%' ESCAPE '~'
		END IS NULL
			THEN 0
		WHEN `p`.`FirstName` IS NULL
			THEN NULL
		ELSE `p`.`FirstName` LIKE 'Jo%' ESCAPE '~'
	END = 1

