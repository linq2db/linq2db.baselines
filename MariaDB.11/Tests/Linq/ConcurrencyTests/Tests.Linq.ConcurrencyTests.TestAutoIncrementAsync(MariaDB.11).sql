﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `ConcurrencyAutoIncrement`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ConcurrencyAutoIncrement`
(
	`Id`    INT           NOT NULL,
	`Stamp` INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcurrencyAutoIncrement` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO `ConcurrencyAutoIncrement`
(
	`Id`,
	`Stamp`,
	`Value`
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	`ConcurrencyAutoIncrement` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	`ConcurrencyAutoIncrement` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	`ConcurrencyAutoIncrement` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE   `obj`
FROM
	`ConcurrencyAutoIncrement` `obj`
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -8

DELETE   `obj`
FROM
	`ConcurrencyAutoIncrement` `obj`
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `ConcurrencyAutoIncrement`

