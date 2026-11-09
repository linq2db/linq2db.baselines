-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @gender String(1) -- StringFixedLength
SET     @gender = 'M'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	@gender = CASE
		WHEN `p`.`PersonID` > 3 THEN 'M'
		WHEN `p`.`PersonID` > 2 THEN 'O'
		ELSE 'F'
	END

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

