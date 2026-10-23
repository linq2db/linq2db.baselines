-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `Issue4132Table`
(
	`Id`,
	`Number`,
	`Text`
)
VALUES
(
	1,
	1,
	'before'
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
UPDATE
	`Issue4132Table` `row_1`
SET
	`row_1`.`Text` = 'updated recently'
WHERE
	`row_1`.`Number` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Number`,
	`r`.`Text`
FROM
	`Issue4132Table` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

