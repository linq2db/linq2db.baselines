﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `StLink`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `StLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_StLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `EdtLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_EdtLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `EdtLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(2,4,3)

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `StLink`

