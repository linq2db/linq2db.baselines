BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `StLink`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `StLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_StLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `EdtLink`
(
	`InId`          INT    NOT NULL,
	`InMaxQuantity` DOUBLE     NULL,
	`InMinQuantity` DOUBLE     NULL,

	CONSTRAINT `PK_EdtLink` PRIMARY KEY CLUSTERED (`InId`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `EdtLink`
(
	`InId`,
	`InMaxQuantity`,
	`InMinQuantity`
)
VALUES
(2,4,3)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EdtLink`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `StLink`

