BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AggregationData]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AggregationData]
(
	[GroupId]   INTEGER NOT NULL,
	[DataValue] Float       NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 1

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = NULL

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 3

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 1

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 5

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 1
DECLARE @DataValue  -- Double
SET     @DataValue = 6

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 7

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 8

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 9

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = NULL

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 11

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 2
DECLARE @DataValue  -- Double
SET     @DataValue = 7

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 13

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 16

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 16

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 16

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = NULL

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @GroupId  -- Int32
SET     @GroupId = 3
DECLARE @DataValue  -- Double
SET     @DataValue = 18

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[GroupId],
	AVG([t].[DataValue]),
	AVG([t].[DataValue]),
	AVG(CASE
		WHEN [t].[DataValue] % 2 = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	AVG(CASE
		WHEN [t].[DataValue] % 2 = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	CAST(AVG(DISTINCT [t].[DataValue]) AS Decimal),
	AVG(DISTINCT CASE
		WHEN [t].[DataValue] % 2 = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN [t].[DataValue] % 2 = 0 THEN [t].[DataValue]
		ELSE NULL
	END)
FROM
	[AggregationData] [t]
WHERE
	[t].[DataValue] IS NOT NULL
GROUP BY
	[t].[GroupId]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AggregationData]

