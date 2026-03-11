-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @name Int32
SET     @name = 8
DECLARE @idx Int32
SET     @idx = 4

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'Insert16',
	CAST(@name + @idx AS CHAR(11)),
	'M'
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Person` `t1`
WHERE
	`t1`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Person`
WHERE
	`Person`.`FirstName` LIKE 'Insert16%' ESCAPE '~'

