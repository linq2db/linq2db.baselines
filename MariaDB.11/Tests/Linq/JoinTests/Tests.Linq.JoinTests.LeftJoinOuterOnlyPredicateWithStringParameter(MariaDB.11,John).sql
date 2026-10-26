-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @name VarChar(4) -- String
SET     @name = 'John'

SELECT
	`p`.`PersonID`,
	`d`.`Taxonomy`
FROM
	`Person` `p`
		LEFT JOIN `Doctor` `d` ON `d`.`PersonID` = `p`.`PersonID` AND `p`.`FirstName` = @name

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`PersonID`,
	`t1`.`Taxonomy`
FROM
	`Doctor` `t1`

