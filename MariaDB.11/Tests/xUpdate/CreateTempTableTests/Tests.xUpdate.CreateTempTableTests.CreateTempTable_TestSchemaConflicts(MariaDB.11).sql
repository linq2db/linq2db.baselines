BeforeExecute
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`Id`      INT           NOT NULL,
	`Renamed` VARCHAR(4000)     NULL
)

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestTempTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Renamed`
FROM
	`TempTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE IF EXISTS `TempTable`

