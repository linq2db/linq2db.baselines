BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ConcurrencyTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ConcurrencyTable`
(
	`Id`    INT           NOT NULL,
	`Stamp` INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcurrencyTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ConcurrencyTable`

