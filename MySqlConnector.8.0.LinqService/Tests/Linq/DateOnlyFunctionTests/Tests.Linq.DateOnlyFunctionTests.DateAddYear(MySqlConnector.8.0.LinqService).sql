BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Transactions`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Transactions`
(
	`TransactionId`   INT  NOT NULL,
	`TransactionDate` DATE NOT NULL,

	CONSTRAINT `PK_Transactions` PRIMARY KEY CLUSTERED (`TransactionId`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 1
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-02-29'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 2
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2021-02-28'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 3
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2019-02-28'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 4
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-03-29'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 5
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-01-29'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 6
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-03-01'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 7
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-02-28'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 8
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-08-09'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 9
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2021-08-09'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 10
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2019-08-09'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 11
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-09-09'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 12
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-07-09'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 13
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-08-10'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @TransactionId Int32
SET     @TransactionId = 14
DECLARE @TransactionDate Datetime -- DateTime
SET     @TransactionDate = '2020-08-08'

INSERT INTO `Transactions`
(
	`TransactionId`,
	`TransactionDate`
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 12 Year)
FROM
	`Transactions` `t`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Transactions`

