﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `AggregationData`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `AggregationData`
(
	`GroupId`   INT    NOT NULL,
	`DataValue` DOUBLE     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 1

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 3

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 1

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 5

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = 6

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 7

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 8

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 9

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 11

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = 7

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 13

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 16

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 16

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 16

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @GroupId Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = 18

INSERT INTO `AggregationData`
(
	`GroupId`,
	`DataValue`
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`g_1`.`GroupId`,
	MIN(`g_1`.`DataValue`),
	MIN(`g_1`.`DataValue`),
	MIN(CASE
		WHEN `g_1`.`DataValue` % 2 = 0
			THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MIN(CASE
		WHEN `g_1`.`DataValue` % 2 = 0
			THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MIN(DISTINCT `g_1`.`DataValue`),
	MIN(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = 0
			THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MIN(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = 0
			THEN `g_1`.`DataValue`
		ELSE NULL
	END)
FROM
	`AggregationData` `g_1`
GROUP BY
	`g_1`.`GroupId`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`GroupId`,
	`t1`.`DataValue`
FROM
	`AggregationData` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `AggregationData`

