BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`x`.`FirstName`,
	RANK() OVER(ORDER BY CASE
		WHEN `x`.`PersonID` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Person` `x`

