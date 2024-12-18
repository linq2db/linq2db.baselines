BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN Char_Length(`p`.`FirstName`) <> 0 THEN `p`.`FirstName`
		WHEN NOT (`p`.`MiddleName` IS NULL OR Char_Length(`p`.`MiddleName`) = 0 AND Char_Length(`p`.`MiddleName`) IS NOT NULL)
			THEN `p`.`MiddleName`
		ELSE `p`.`LastName`
	END
FROM
	`Person` `p`

