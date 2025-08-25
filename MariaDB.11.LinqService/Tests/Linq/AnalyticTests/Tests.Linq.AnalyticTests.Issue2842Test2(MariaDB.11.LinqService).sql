BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`x`.`FirstName`,
	RANK() OVER(ORDER BY CASE
		WHEN `x`.`PersonID` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Person` `x`

