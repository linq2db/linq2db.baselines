BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `ConcurrencyAutoIncrement`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ConcurrencyAutoIncrement`
(
	`Id`    INT           NOT NULL,
	`Stamp` INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcurrencyAutoIncrement` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'initial'

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
	@Value_1
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	`ConcurrencyAutoIncrement` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value_1
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	`ConcurrencyAutoIncrement` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value_1
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	`ConcurrencyAutoIncrement` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value_1
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `ConcurrencyAutoIncrement`

