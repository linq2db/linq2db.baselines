﻿BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `StLink`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `StLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_StLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `StLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(1,2,1),
(2,NULL,NULL)

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `EdtLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_EdtLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `EdtLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(2,4,3)

BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`InId`,
	CASE
		WHEN `j`.`InId` IS NULL THEN `x`.`InMinQuantity`
		ELSE `j`.`InMinQuantity`
	END,
	CASE
		WHEN `j`.`InId` IS NULL THEN `x`.`InMaxQuantity`
		ELSE `j`.`InMaxQuantity`
	END
FROM
	`StLink` `x`
		LEFT JOIN `EdtLink` `j` ON `x`.`InId` = `j`.`InId`
WHERE
	`x`.`InId` = 1
LIMIT @take

BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`InId`,
	CASE
		WHEN `j`.`InId` IS NULL THEN `x`.`InMinQuantity`
		ELSE `j`.`InMinQuantity`
	END,
	CASE
		WHEN `j`.`InId` IS NULL THEN `x`.`InMaxQuantity`
		ELSE `j`.`InMaxQuantity`
	END
FROM
	`StLink` `x`
		LEFT JOIN `EdtLink` `j` ON `x`.`InId` = `j`.`InId`
WHERE
	`x`.`InId` = 2
LIMIT @take

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `StLink`

