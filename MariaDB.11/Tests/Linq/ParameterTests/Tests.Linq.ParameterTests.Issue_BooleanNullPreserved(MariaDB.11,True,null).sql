-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `TestBool`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`TestBool` `t1`
SET
	`t1`.`Value` = NOT `t1`.`Value`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`TestBool` `r`
SET
	`r`.`Value` = NULL
WHERE
	`r`.`Id` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestBool` `t1`
LIMIT 2

