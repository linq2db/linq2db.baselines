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

WITH `CTE_1` (`InvestorId`, `SecurityClass`, `Units`)
AS
(
	SELECT
		`g_1`.`InvestorId`,
		`g_1`.`SecurityClass`,
		SUM(`g_1`.`Units`)
	FROM
		`Transaction` `g_1`
	GROUP BY
		`g_1`.`SecurityClass`,
		`g_1`.`InvestorId`
)
SELECT
	`ip`.`InvestorId`,
	`b`.`Units`,
	SUM(`ip`.`NetPayment`)
FROM
	`PaymentEvent` `p`
		INNER JOIN `InvestorPayment` `ip` ON `p`.`Id` = `ip`.`Id`
		INNER JOIN `InvestorPaymentDetail` `ipd` ON `ip`.`InvestorId` = `ipd`.`InvestorId`
		INNER JOIN `PaymentCalculation` `pc` ON `ipd`.`CalculationId` = `pc`.`Id` AND `p`.`Id` = `pc`.`EventId`
		INNER JOIN `CTE_1` `b` ON `ip`.`InvestorId` = `b`.`InvestorId` AND `p`.`SecurityClass` = `b`.`SecurityClass`
GROUP BY
	`ip`.`InvestorId`,
	`b`.`Units`

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

