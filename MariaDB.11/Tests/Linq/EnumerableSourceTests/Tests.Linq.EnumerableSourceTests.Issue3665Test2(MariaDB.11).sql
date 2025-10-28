BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`PersonID` + `y`.`item`
FROM
	`Person` `x`
		CROSS JOIN (
			SELECT 0 AS `item`
			UNION ALL
			SELECT 1
			UNION ALL
			SELECT 2
			UNION ALL
			SELECT 3) `y`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

