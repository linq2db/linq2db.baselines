-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`,
	`Person` `p2`
WHERE
	`t1`.`PersonID` = `p2`.`PersonID` AND Replace(`t1`.`FirstName`, 'J', '%') LIKE Concat(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(`p2`.`FirstName`, 'J', '%'), '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]'), '%') ESCAPE '~'

