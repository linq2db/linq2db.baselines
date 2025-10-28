BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	MAX(`r`.`PersonID`)
FROM
	`Person` `r`
UNION ALL
SELECT
	`r_1`.`PersonID`
FROM
	`Person` `r_1`

