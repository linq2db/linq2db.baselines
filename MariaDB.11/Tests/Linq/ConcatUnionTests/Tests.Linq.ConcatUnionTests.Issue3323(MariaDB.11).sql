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
	`t1`.`Id`,
	`t1`.`Text`,
	Concat(`t1`.`FirstName`, ' ', `t1`.`LastName`)
FROM
	`Issue3323Table` `t1`
UNION ALL
SELECT
	`t2`.`Id`,
	`t2`.`Text`,
	Concat(`t2`.`FirstName`, ' ', `t2`.`LastName`)
FROM
	`Issue3323Table` `t2`

