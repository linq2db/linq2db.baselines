BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `p`.`PersonID` = 1 THEN 1
		ELSE 0
	END
FROM
	`Person` `p`

