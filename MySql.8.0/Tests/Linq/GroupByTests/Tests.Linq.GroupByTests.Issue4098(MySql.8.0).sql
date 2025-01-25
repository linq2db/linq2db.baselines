BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Transaction`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Transaction`
(
	`InvestorId`    VARCHAR(4000)     NULL,
	`SecurityClass` VARCHAR(4000) NOT NULL,
	`Units`         INT           NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Transaction`
(
	`InvestorId`,
	`SecurityClass`,
	`Units`
)
VALUES
('inv1','test',100),
('inv1','test',200),
('inv2','test',300),
('inv2','test',400)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvestorPayment`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `InvestorPayment`
(
	`Id`         INT           NOT NULL,
	`InvestorId` VARCHAR(4000) NOT NULL,
	`NetPayment` INT           NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `InvestorPayment`
(
	`Id`,
	`InvestorId`,
	`NetPayment`
)
VALUES
(1,'inv1',100),
(2,'inv2',200)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PaymentEvent`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `PaymentEvent`
(
	`Id`            INT           NOT NULL,
	`Description`   VARCHAR(4000)     NULL,
	`SecurityClass` VARCHAR(4000) NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `PaymentEvent`
(
	`Id`,
	`Description`,
	`SecurityClass`
)
VALUES
(1,'one','test'),
(2,'two','test')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvestorPaymentDetail`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `InvestorPaymentDetail`
(
	`InvestorId`    VARCHAR(4000)     NULL,
	`CalculationId` INT           NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `InvestorPaymentDetail`
(
	`InvestorId`,
	`CalculationId`
)
VALUES
('inv1',1),
('inv2',2)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PaymentCalculation`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `PaymentCalculation`
(
	`Id`      INT NOT NULL,
	`EventId` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `PaymentCalculation`
(
	`Id`,
	`EventId`
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`ip`.`InvestorId`,
	`t1`.`Units`,
	SUM(`ip`.`NetPayment`)
FROM
	`PaymentEvent` `g_1`
		INNER JOIN `InvestorPayment` `ip` ON `g_1`.`Id` = `ip`.`Id`
		INNER JOIN `InvestorPaymentDetail` `ipd` ON `ip`.`InvestorId` = `ipd`.`InvestorId`
		INNER JOIN `PaymentCalculation` `pc` ON `ipd`.`CalculationId` = `pc`.`Id` AND `g_1`.`Id` = `pc`.`EventId`
		INNER JOIN (
			SELECT
				`b`.`InvestorId`,
				`b`.`SecurityClass`,
				SUM(`b`.`Units`) as `Units`
			FROM
				`Transaction` `b`
			GROUP BY
				`b`.`SecurityClass`,
				`b`.`InvestorId`
		) `t1` ON `ip`.`InvestorId` = `t1`.`InvestorId` AND `g_1`.`SecurityClass` = `t1`.`SecurityClass`
GROUP BY
	`ip`.`InvestorId`,
	`t1`.`Units`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PaymentCalculation`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvestorPaymentDetail`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PaymentEvent`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvestorPayment`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Transaction`

