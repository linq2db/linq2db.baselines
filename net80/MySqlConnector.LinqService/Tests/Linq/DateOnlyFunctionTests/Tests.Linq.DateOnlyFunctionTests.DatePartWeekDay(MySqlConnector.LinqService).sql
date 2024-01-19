﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Transactions`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Transactions`
(
	`TransactionId`   INT  NOT NULL,
	`TransactionDate` DATE NOT NULL,

	CONSTRAINT `PK_Transactions` PRIMARY KEY CLUSTERED (`TransactionId`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	WeekDay(Date_Add(`t`.`TransactionDate`, interval 1 day)) + 1
FROM
	`Transactions` `t`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Transactions`

