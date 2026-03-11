-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`r_1`.`ID`,
	`r_1`.`LastName`
FROM
	(
		SELECT DISTINCT
			`r`.`FirstName`,
			`r`.`PersonID` as `ID`,
			`r`.`LastName`,
			`r`.`MiddleName`,
			`r`.`Gender`
		FROM
			`Person` `r`
	) `r_1`
ORDER BY
	`r_1`.`FirstName`
LIMIT @skip, @take

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

