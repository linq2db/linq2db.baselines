BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Transaction`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Transaction`
(
	`InvestorId`    VARCHAR(4000)     NULL,
	`SecurityClass` VARCHAR(4000) NOT NULL,
	`Units`         INT           NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `InvestorPayment`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `InvestorPayment`
(
	`Id`         INT           NOT NULL,
	`InvestorId` VARCHAR(4000) NOT NULL,
	`NetPayment` INT           NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `PaymentEvent`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `PaymentEvent`
(
	`Id`            INT           NOT NULL,
	`Description`   VARCHAR(4000)     NULL,
	`SecurityClass` VARCHAR(4000) NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `InvestorPaymentDetail`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `InvestorPaymentDetail`
(
	`InvestorId`    VARCHAR(4000)     NULL,
	`CalculationId` INT           NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `InvestorPaymentDetail`
(
	`InvestorId`,
	`CalculationId`
)
VALUES
('inv1',1),
('inv2',2)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `PaymentCalculation`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `PaymentCalculation`
(
	`Id`      INT NOT NULL,
	`EventId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `PaymentCalculation`
(
	`Id`,
	`EventId`
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`ip`.`InvestorId`,
	`t1`.`TotalUnits`,
	SUM(`ip`.`NetPayment`)
FROM
	`PaymentEvent` `p`
		INNER JOIN `InvestorPayment` `ip` ON `p`.`Id` = `ip`.`Id`
		INNER JOIN `InvestorPaymentDetail` `ipd` ON `ip`.`InvestorId` = `ipd`.`InvestorId`
		INNER JOIN `PaymentCalculation` `pc` ON `ipd`.`CalculationId` = `pc`.`Id` AND `p`.`Id` = `pc`.`EventId`
		INNER JOIN (
			SELECT
				SUM(`b`.`Units`) as `TotalUnits`,
				`b`.`InvestorId`,
				`b`.`SecurityClass`
			FROM
				`Transaction` `b`
			GROUP BY
				`b`.`SecurityClass`,
				`b`.`InvestorId`
		) `t1` ON `ip`.`InvestorId` = `t1`.`InvestorId` AND `p`.`SecurityClass` = `t1`.`SecurityClass`
GROUP BY
	`ip`.`InvestorId`,
	`t1`.`TotalUnits`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `PaymentCalculation`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `InvestorPaymentDetail`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `PaymentEvent`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `InvestorPayment`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Transaction`

