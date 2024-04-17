﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `CreateTableTypes`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CreateTableTypes`
(
	`Id`               INT      NOT NULL,
	`DateTimeNullable` DATETIME     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTimeNullable Datetime -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTimeNullable`
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTimeNullable Datetime -- DateTime
SET     @DateTimeNullable = '2018-11-25 01:02:03'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTimeNullable`
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`DateTimeNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `CreateTableTypes`

