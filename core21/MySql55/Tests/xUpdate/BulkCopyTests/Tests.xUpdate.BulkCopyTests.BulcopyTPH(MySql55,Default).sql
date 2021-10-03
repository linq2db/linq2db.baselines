BeforeExecute
-- MySql55 MySql

CREATE TABLE `TPHTable`
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
-- MySql55 MySql

INSERT INTO `TPHTable`
(
	`Id`,
	`Discriminator`,
	`Value1`,
	`Value2`,
	`NullableBool`,
	`Value3`
)
VALUES
(1,1,'Str1',NULL,NULL,NULL),
(2,2,NULL,'Str2',NULL,NULL),
(3,3,NULL,NULL,'Y','Str3')

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Discriminator`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`NullableBool`,
	`t1`.`Value3`
FROM
	`TPHTable` `t1`

BeforeExecute
-- MySql55 MySql
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
-- MySql55 MySql
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
-- MySql55 MySql
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
-- MySql55 MySql
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
-- MySql55 MySql
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
-- MySql55 MySql
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
-- MySql55 MySql

DROP TABLE IF EXISTS `TPHTable`

