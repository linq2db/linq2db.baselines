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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

