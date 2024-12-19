BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN Char_Length(`p`.`FirstName`) = 0 THEN 1
		ELSE 0
	END
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

