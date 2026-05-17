-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Issue3323Table`
(
	`Id`,
	`FirstName`,
	`LastName`,
	`Text`
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`,
	CONCAT(Coalesce(`r`.`FirstName`, ''), ' ', Coalesce(`r`.`LastName`, ''))
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id` + 1,
	`r_1`.`Text`
FROM
	`Issue3323Table` `r_1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id` + 1,
	`r`.`Text`
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id`,
	CONCAT(Coalesce(`r_1`.`FirstName`, ''), ' ', Coalesce(`r_1`.`LastName`, ''))
FROM
	`Issue3323Table` `r_1`

