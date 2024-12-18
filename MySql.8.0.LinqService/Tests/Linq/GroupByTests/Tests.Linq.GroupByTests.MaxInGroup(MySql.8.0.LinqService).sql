BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AggregationData`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `AggregationData`
(
	`GroupId`   INT    NOT NULL,
	`DataValue` DOUBLE     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`GroupId`,
	MAX(`g_1`.`DataValue`),
	MAX(`g_1`.`DataValue`),
	MAX(CASE
		WHEN `g_1`.`DataValue` % 2 = 0 AND `g_1`.`DataValue` IS NOT NULL
			THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MAX(CASE
		WHEN `g_1`.`DataValue` % 2 = 0 AND `g_1`.`DataValue` IS NOT NULL
			THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MAX(DISTINCT `g_1`.`DataValue`),
	MAX(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = 0 AND `g_1`.`DataValue` IS NOT NULL
			THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MAX(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = 0 AND `g_1`.`DataValue` IS NOT NULL
			THEN `g_1`.`DataValue`
		ELSE NULL
	END)
FROM
	`AggregationData` `g_1`
GROUP BY
	`g_1`.`GroupId`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`GroupId`,
	`t1`.`DataValue`
FROM
	`AggregationData` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AggregationData`

