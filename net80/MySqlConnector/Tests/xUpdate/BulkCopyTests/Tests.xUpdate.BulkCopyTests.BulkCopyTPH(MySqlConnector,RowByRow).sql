BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TPHTable`

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Discriminator Int32
SET     @Discriminator = 1
DECLARE @Value1 VarChar(4) -- String
SET     @Value1 = 'Str1'

INSERT INTO `TPHTable`
(
	`Id`,
	`Discriminator`,
	`Value1`
)
VALUES
(
	@Id,
	@Discriminator,
	@Value1
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Discriminator Int32
SET     @Discriminator = 2
DECLARE @Value2 VarChar(4) -- String
SET     @Value2 = 'Str2'

INSERT INTO `TPHTable`
(
	`Id`,
	`Discriminator`,
	`Value2`
)
VALUES
(
	@Id,
	@Discriminator,
	@Value2
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Discriminator Int32
SET     @Discriminator = 3
DECLARE @Value3 VarChar(4) -- String
SET     @Value3 = 'Str3'
DECLARE @NullableBool VarChar(1) -- AnsiString
SET     @NullableBool = 'Y'

INSERT INTO `TPHTable`
(
	`Id`,
	`Discriminator`,
	`Value3`,
	`NullableBool`
)
VALUES
(
	@Id,
	@Discriminator,
	@Value3,
	@NullableBool
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Discriminator`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value3`,
	`t1`.`NullableBool`
FROM
	`TPHTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`Value3`,
	`x`.`NullableBool`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 1
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`Value3`,
	`x`.`NullableBool`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 2
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`Value3`,
	`x`.`NullableBool`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 3
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`Value3`,
	`x`.`NullableBool`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value1` = 'Str1'
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`Value3`,
	`x`.`NullableBool`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value2` = 'Str2'
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`Id`,
	`x`.`Discriminator`,
	`x`.`Value1`,
	`x`.`Value2`,
	`x`.`Value3`,
	`x`.`NullableBool`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value3` = 'Str3'
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TPHTable`

