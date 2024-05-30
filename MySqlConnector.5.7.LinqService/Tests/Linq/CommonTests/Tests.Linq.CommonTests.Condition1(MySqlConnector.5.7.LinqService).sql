BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `p`.`FirstName` IS NULL OR Char_Length(`p`.`FirstName`) = 0
			THEN 1
		ELSE 0
	END,
	`p`.`FirstName`,
	CASE
		WHEN `p`.`MiddleName` IS NULL OR Char_Length(`p`.`MiddleName`) = 0
			THEN 1
		ELSE 0
	END,
	`p`.`MiddleName`,
	`p`.`LastName`
FROM
	`Person` `p`

