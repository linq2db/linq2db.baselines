BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `StLink`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `StLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_StLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @InId Int32
SET     @InId = 1
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = 2
DECLARE @InMinQuantity Double
SET     @InMinQuantity = 1

INSERT INTO `StLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @InId Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = NULL
DECLARE @InMinQuantity Double
SET     @InMinQuantity = NULL

INSERT INTO `StLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `EdtLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_EdtLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @InId Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = 4
DECLARE @InMinQuantity Double
SET     @InMinQuantity = 3

INSERT INTO `EdtLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`InId`,
	`j`.`InId`,
	`j`.`InMaxQuantity`,
	`j`.`InMinQuantity`,
	`x`.`InMinQuantity`,
	`x`.`InMaxQuantity`
FROM
	`StLink` `x`
		LEFT JOIN `EdtLink` `j` ON `x`.`InId` = `j`.`InId`
WHERE
	`x`.`InId` = 1
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`InId`,
	`j`.`InId`,
	`j`.`InMaxQuantity`,
	`j`.`InMinQuantity`,
	`x`.`InMinQuantity`,
	`x`.`InMaxQuantity`
FROM
	`StLink` `x`
		LEFT JOIN `EdtLink` `j` ON `x`.`InId` = `j`.`InId`
WHERE
	`x`.`InId` = 2
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `StLink`

