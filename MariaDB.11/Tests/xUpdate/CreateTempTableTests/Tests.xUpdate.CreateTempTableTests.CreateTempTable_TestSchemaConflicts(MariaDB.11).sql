-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `TestTempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	'value'
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`Id`      INT           NOT NULL,
	`Renamed` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TempTable` PRIMARY KEY CLUSTERED (`Id`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `TempTable`
(
	`Id`,
	`Renamed`
)
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestTempTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `TestTempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	2,
	'value 2'
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `TempTable`
(
	`Id`,
	`Renamed`
)
VALUES
(
	2,
	'renamed 2'
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestTempTable` `t1`
ORDER BY
	`t1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Renamed`
FROM
	`TempTable` `t1`
ORDER BY
	`t1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `TempTable`

