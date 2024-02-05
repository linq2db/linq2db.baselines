BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Transaction`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Transaction`
(
	`InvestorId`    VARCHAR(4000)     NULL,
	`SecurityClass` VARCHAR(4000) NOT NULL,
	`Units`         INT           NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `InvestorPayment`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `InvestorPayment`
(
	`Id`         INT           NOT NULL,
	`InvestorId` VARCHAR(4000) NOT NULL,
	`NetPayment` INT           NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `PaymentEvent`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `PaymentEvent`
(
	`Id`            INT           NOT NULL,
	`Description`   VARCHAR(4000)     NULL,
	`SecurityClass` VARCHAR(4000) NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `InvestorPaymentDetail`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `InvestorPaymentDetail`
(
	`InvestorId`    VARCHAR(4000)     NULL,
	`CalculationId` INT           NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `InvestorPaymentDetail`
(
	`InvestorId`,
	`CalculationId`
)
VALUES
('inv1',1),
('inv2',2)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `PaymentCalculation`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `PaymentCalculation`
(
	`Id`      INT NOT NULL,
	`EventId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `PaymentCalculation`
(
	`Id`,
	`EventId`
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- MySqlConnector MySql

WITH `CTE_1` (`InvestorId`, `SecurityClass`, `Units`)
AS
(
	SELECT
		`t1`.`InvestorId`,
		`t1`.`SecurityClass`,
		Sum(`t1`.`Units`)
	FROM
		`Transaction` `t1`
	GROUP BY
		`t1`.`SecurityClass`,
		`t1`.`InvestorId`
)
SELECT
	`ip`.`InvestorId`,
	`b`.`Units`,
	Sum(`ip`.`NetPayment`)
FROM
	`PaymentEvent` `pe`
		INNER JOIN `InvestorPayment` `ip` ON `pe`.`Id` = `ip`.`Id`
		INNER JOIN `InvestorPaymentDetail` `ipd` ON `ip`.`InvestorId` = `ipd`.`InvestorId`
		INNER JOIN `PaymentCalculation` `pc` ON `ipd`.`CalculationId` = `pc`.`Id` AND `pe`.`Id` = `pc`.`EventId`
		INNER JOIN `CTE_1` `b` ON `ip`.`InvestorId` = `b`.`InvestorId` AND `pe`.`SecurityClass` = `b`.`SecurityClass`
GROUP BY
	`ip`.`InvestorId`,
	`b`.`Units`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `PaymentCalculation`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `InvestorPaymentDetail`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `PaymentEvent`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `InvestorPayment`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Transaction`

