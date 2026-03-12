-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE FROM `test_temp`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE FROM `test_temp`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

