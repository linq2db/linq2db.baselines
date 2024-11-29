BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `r`.`PersonID` IN (1, 2, 3) THEN 1
		ELSE 0
	END
FROM
	`Person` `r`

