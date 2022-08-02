﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `TPHTable`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TPHTable`
(
	`Id`            INT         NOT NULL,
	`Discriminator` INT         NOT NULL,
	`Value1`        VARCHAR(50)     NULL,
	`Value2`        VARCHAR(50)     NULL,
	`NullableBool`  VARCHAR(1)      NULL,
	`Value3`        VARCHAR(50)     NULL,

	CONSTRAINT `PK_TPHTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
INSERT BULK `TPHTable`(Id, Discriminator, Value1, Value2, NullableBool, Value3

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Discriminator`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`NullableBool`,
	`t1`.`Value3`
FROM
	`TPHTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`NullableBool`,
	`x`.`Value3`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 1
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`NullableBool`,
	`x`.`Value3`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 2
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`NullableBool`,
	`x`.`Value3`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 3
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`NullableBool`,
	`x`.`Value3`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value1` = 'Str1'
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`NullableBool`,
	`x`.`Value3`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value2` = 'Str2'
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`NullableBool`,
	`x`.`Value3`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value3` = 'Str3'
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `TPHTable`

