-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`UpdateSubquerySourceTable` `x`
		LEFT JOIN `UpdateSubquerySourceTable` `canChange` ON `canChange`.`Id` = `x`.`Id` + 1
SET
	`x`.`FirstName` = CASE
		WHEN `canChange`.`Id` IS NOT NULL THEN `canChange`.`FirstName`
		ELSE `x`.`FirstName`
	END,
	`x`.`LastName` = CASE
		WHEN `canChange`.`Id` IS NOT NULL THEN `canChange`.`LastName`
		ELSE `x`.`LastName`
	END
WHERE
	`x`.`Id` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`FirstName`,
	`t1`.`LastName`
FROM
	`UpdateSubquerySourceTable` `t1`
ORDER BY
	`t1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Person`
WHERE
	`Person`.`PersonID` > 4

