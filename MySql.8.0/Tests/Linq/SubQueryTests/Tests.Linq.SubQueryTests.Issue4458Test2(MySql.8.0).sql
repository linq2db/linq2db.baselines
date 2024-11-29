BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4458Item`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4458Item`
(
	`Id` VARCHAR(4000) NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue4458Item`
(
	`Id`
)
VALUES
('1'),
('2'),
('3')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `WarehouseStock`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `WarehouseStock`
(
	`ItemId`            VARCHAR(4000) NOT NULL,
	`QuantityAvailable` INT           NOT NULL,
	`WarehouseId`       VARCHAR(4000) NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `WarehouseStock`
(
	`ItemId`,
	`QuantityAvailable`,
	`WarehouseId`
)
VALUES
('1',10,'A')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Review`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Review`
(
	`ItemId` VARCHAR(4000) NOT NULL,
	`UserId` VARCHAR(4000) NOT NULL,
	`Score`  INT           NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Review`
(
	`ItemId`,
	`UserId`,
	`Score`
)
VALUES
('1','1',100),
('1','2',90),
('2','1',89),
('2','4',93),
('3','5',91)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`ItemId`,
	`d`.`UserId`,
	`d`.`Score`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Issue4458Item` `t1`
		WHERE
			EXISTS(
				SELECT
					1
				FROM
					`Review` `r`
				WHERE
					`r`.`ItemId` = `t1`.`Id` AND `r`.`Score` > 95
			)
	) `m_1`
		INNER JOIN `Review` `d` ON `d`.`ItemId` = `m_1`.`Id`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`i`.`Id`,
	(
		SELECT
			SUM(`s`.`QuantityAvailable`)
		FROM
			`WarehouseStock` `s`
		WHERE
			`s`.`ItemId` = `i`.`Id` AND (
				SELECT
					`stock`.`ItemId`
				FROM
					`WarehouseStock` `stock`
				WHERE
					`stock`.`ItemId` = `i`.`Id`
				GROUP BY
					`stock`.`ItemId`
			) = `s`.`ItemId`
	)
FROM
	`Issue4458Item` `i`
WHERE
	EXISTS(
		SELECT
			1
		FROM
			`Review` `r`
		WHERE
			`r`.`ItemId` = `i`.`Id` AND `r`.`Score` > 95
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Review`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `WarehouseStock`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4458Item`

