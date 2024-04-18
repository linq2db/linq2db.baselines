BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN `p`.`PersonID` = 1 THEN 1
		ELSE 0
	END
FROM
	`Person` `p`

