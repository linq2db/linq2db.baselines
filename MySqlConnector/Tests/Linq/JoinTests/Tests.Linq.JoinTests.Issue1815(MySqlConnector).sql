﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `StLink`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `StLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_StLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `EdtLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_EdtLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `EdtLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(2,4,3)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`InId`,
	`e`.`InId`,
	`t1`.`InMinQuantity`,
	`e`.`InMinQuantity`,
	`t1`.`InMaxQuantity`,
	`e`.`InMaxQuantity`
FROM
	`StLink` `t1`
		LEFT JOIN `EdtLink` `e` ON `t1`.`InId` = `e`.`InId`
WHERE
	`t1`.`InId` = 1
LIMIT 2

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`InId`,
	`e`.`InId`,
	`t1`.`InMinQuantity`,
	`e`.`InMinQuantity`,
	`t1`.`InMaxQuantity`,
	`e`.`InMaxQuantity`
FROM
	`StLink` `t1`
		LEFT JOIN `EdtLink` `e` ON `t1`.`InId` = `e`.`InId`
WHERE
	`t1`.`InId` = 2
LIMIT 2

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `StLink`

