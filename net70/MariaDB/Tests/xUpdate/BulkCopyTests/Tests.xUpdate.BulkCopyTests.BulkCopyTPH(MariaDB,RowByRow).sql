BeforeExecute
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
	`NullableBool`  VARCHAR(1)      NULL,
	`Value3`        VARCHAR(50)     NULL,

	CONSTRAINT `PK_TPHTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value1 VarChar(4) -- String
SET     @Value1 = 'Str1'
DECLARE @Discriminator Int32
SET     @Discriminator = 1

INSERT INTO `TPHTable`
(
	`Id`,
	`Value1`,
	`Discriminator`
)
VALUES
(
	@Id,
	@Value1,
	@Discriminator
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value2 VarChar(4) -- String
SET     @Value2 = 'Str2'
DECLARE @Discriminator Int32
SET     @Discriminator = 2

INSERT INTO `TPHTable`
(
	`Id`,
	`Value2`,
	`Discriminator`
)
VALUES
(
	@Id,
	@Value2,
	@Discriminator
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @NullableBool VarChar(1) -- AnsiString
SET     @NullableBool = 'Y'
DECLARE @Value3 VarChar(4) -- String
SET     @Value3 = 'Str3'
DECLARE @Discriminator Int32
SET     @Discriminator = 3

INSERT INTO `TPHTable`
(
	`Id`,
	`NullableBool`,
	`Value3`,
	`Discriminator`
)
VALUES
(
	@Id,
	@NullableBool,
	@Value3,
	@Discriminator
)

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TPHTable`

