﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TPHTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TPHTable`
(
	`Id`            INT         NOT NULL,
	`Discriminator` INT         NOT NULL,
	`Value1`        VARCHAR(50)     NULL,
	`Value2`        VARCHAR(50)     NULL,
	`Value3`        VARCHAR(50)     NULL,
	`NullableBool`  VARCHAR(1)      NULL,

	CONSTRAINT `PK_TPHTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
INSERT BULK `TPHTable`(Id, Discriminator, Value1, Value2, Value3, NullableBool

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Discriminator`,
	`t1`.`Id`,
	`t1`.`Value3`,
	`t1`.`NullableBool`,
	`t1`.`Value2`,
	`t1`.`Value1`
FROM
	`TPHTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 1
LIMIT 2

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 2
LIMIT 2

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 3
LIMIT 2

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value1` = 'Str1'
LIMIT 2

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value2` = 'Str2'
LIMIT 2

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value3` = 'Str3'
LIMIT 2

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TPHTable`

