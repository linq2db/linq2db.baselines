-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Person`
(
	`FirstName`,
	`MiddleName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` = 'InsertDefault'

