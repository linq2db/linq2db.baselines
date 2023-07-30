BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Transaction`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Transaction`
(
	`InvestorId`    VARCHAR(4000)     NULL,
	`SecurityClass` VARCHAR(4000) NOT NULL,
	`Units`         INT           NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int32
SET     @Units = 100

INSERT INTO `Transaction`
(
	`InvestorId`,
	`SecurityClass`,
	`Units`
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int32
SET     @Units = 200

INSERT INTO `Transaction`
(
	`InvestorId`,
	`SecurityClass`,
	`Units`
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int32
SET     @Units = 300

INSERT INTO `Transaction`
(
	`InvestorId`,
	`SecurityClass`,
	`Units`
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int32
SET     @Units = 400

INSERT INTO `Transaction`
(
	`InvestorId`,
	`SecurityClass`,
	`Units`
)
VALUES
(
	@InvestorId,
	@SecurityClass,
	@Units
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `InvestorPayment`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `InvestorPayment`
(
	`Id`         INT           NOT NULL,
	`InvestorId` VARCHAR(4000) NOT NULL,
	`NetPayment` INT           NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @NetPayment Int32
SET     @NetPayment = 100

INSERT INTO `InvestorPayment`
(
	`Id`,
	`InvestorId`,
	`NetPayment`
)
VALUES
(
	@Id,
	@InvestorId,
	@NetPayment
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @NetPayment Int32
SET     @NetPayment = 200

INSERT INTO `InvestorPayment`
(
	`Id`,
	`InvestorId`,
	`NetPayment`
)
VALUES
(
	@Id,
	@InvestorId,
	@NetPayment
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `PaymentEvent`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `PaymentEvent`
(
	`Id`            INT           NOT NULL,
	`Description`   VARCHAR(4000)     NULL,
	`SecurityClass` VARCHAR(4000) NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Description VarChar(3) -- String
SET     @Description = 'one'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO `PaymentEvent`
(
	`Id`,
	`Description`,
	`SecurityClass`
)
VALUES
(
	@Id,
	@Description,
	@SecurityClass
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Description VarChar(3) -- String
SET     @Description = 'two'
DECLARE @SecurityClass VarChar(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO `PaymentEvent`
(
	`Id`,
	`Description`,
	`SecurityClass`
)
VALUES
(
	@Id,
	@Description,
	@SecurityClass
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `InvestorPaymentDetail`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `InvestorPaymentDetail`
(
	`InvestorId`    VARCHAR(4000)     NULL,
	`CalculationId` INT           NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @CalculationId Int32
SET     @CalculationId = 1

INSERT INTO `InvestorPaymentDetail`
(
	`InvestorId`,
	`CalculationId`
)
VALUES
(
	@InvestorId,
	@CalculationId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @InvestorId VarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @CalculationId Int32
SET     @CalculationId = 2

INSERT INTO `InvestorPaymentDetail`
(
	`InvestorId`,
	`CalculationId`
)
VALUES
(
	@InvestorId,
	@CalculationId
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `PaymentCalculation`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `PaymentCalculation`
(
	`Id`      INT NOT NULL,
	`EventId` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @EventId Int32
SET     @EventId = 1

INSERT INTO `PaymentCalculation`
(
	`Id`,
	`EventId`
)
VALUES
(
	@Id,
	@EventId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @EventId Int32
SET     @EventId = 2

INSERT INTO `PaymentCalculation`
(
	`Id`,
	`EventId`
)
VALUES
(
	@Id,
	@EventId
)

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `PaymentCalculation`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `InvestorPaymentDetail`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `PaymentEvent`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `InvestorPayment`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Transaction`

