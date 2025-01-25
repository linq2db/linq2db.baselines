BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `StLink`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `StLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_StLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `EdtLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_EdtLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `EdtLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(2,4,3)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`InId`,
	CASE
		WHEN `e`.`InId` IS NULL THEN `t1`.`InMinQuantity`
		ELSE `e`.`InMinQuantity`
	END,
	CASE
		WHEN `e`.`InId` IS NULL THEN `t1`.`InMaxQuantity`
		ELSE `e`.`InMaxQuantity`
	END
FROM
	`StLink` `t1`
		LEFT JOIN `EdtLink` `e` ON `t1`.`InId` = `e`.`InId`
WHERE
	`t1`.`InId` = 1
LIMIT 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`InId`,
	CASE
		WHEN `e`.`InId` IS NULL THEN `t1`.`InMinQuantity`
		ELSE `e`.`InMinQuantity`
	END,
	CASE
		WHEN `e`.`InId` IS NULL THEN `t1`.`InMaxQuantity`
		ELSE `e`.`InMaxQuantity`
	END
FROM
	`StLink` `t1`
		LEFT JOIN `EdtLink` `e` ON `t1`.`InId` = `e`.`InId`
WHERE
	`t1`.`InId` = 2
LIMIT 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `StLink`

