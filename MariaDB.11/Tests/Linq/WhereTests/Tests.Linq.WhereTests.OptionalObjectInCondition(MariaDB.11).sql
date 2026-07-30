-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id VarChar(1) -- String
SET     @Id = '1'

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @Id

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	1 = 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id VarChar(1) -- String
SET     @Id = '1'

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @Id

