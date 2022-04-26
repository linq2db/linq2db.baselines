﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Transactions`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Transactions`
(
	`TransactionId`   INT  NOT NULL,
	`TransactionDate` DATE NOT NULL,

	CONSTRAINT `PK_Transactions` PRIMARY KEY CLUSTERED (`TransactionId`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 1
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 2
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 3
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 4
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 5
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 6
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 7
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 8
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 9
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 10
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 11
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 12
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 13
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql
DECLARE @TransactionId Int32
SET     @TransactionId = 14
DECLARE @TransactionDate DateTime
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
-- MySql MySql.Official MySql

SELECT
	`d`.`c1`
FROM
	(
		SELECT
			Cast(Cast(`t`.`TransactionDate` as CHAR(10)) as DATE) as `c1`
		FROM
			`Transactions` `t`
	) `d`
WHERE
	Extract(day from `d`.`c1`) > 0

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Transactions`

