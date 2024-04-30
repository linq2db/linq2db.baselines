BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AggregationData') IS NOT NULL)
	DROP TABLE [AggregationData]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AggregationData') IS NULL)
	EXECUTE('
		CREATE TABLE [AggregationData]
		(
			[GroupId]   Int   NOT NULL,
			[DataValue] Float     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase
DECLARE @GroupId Integer -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
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
-- Sybase.Managed Sybase

SELECT
	[m_1].[GroupId],
	[d_1].[DataValue]
FROM
	(
		SELECT DISTINCT
			[t].[GroupId]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				[d].[DataValue],
				[d].[GroupId]
			FROM
				[AggregationData] [d]
			WHERE
				[d].[DataValue] IS NOT NULL
		) [d_1] ON [m_1].[GroupId] = [d_1].[GroupId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[GroupId],
	[d_1].[DataValue]
FROM
	(
		SELECT DISTINCT
			[t].[GroupId]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				[d].[DataValue],
				[d].[GroupId]
			FROM
				[AggregationData] [d]
			WHERE
				[d].[DataValue] IS NOT NULL AND [d].[DataValue] % 2 = 0
		) [d_1] ON [m_1].[GroupId] = [d_1].[GroupId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[GroupId],
	[d_1].[DataValue]
FROM
	(
		SELECT DISTINCT
			[t].[GroupId]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				[d].[DataValue],
				[d].[GroupId]
			FROM
				[AggregationData] [d]
			WHERE
				[d].[DataValue] IS NOT NULL AND [d].[DataValue] % 2 = 0
		) [d_1] ON [m_1].[GroupId] = [d_1].[GroupId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[g_1].[GroupId],
	COUNT(*),
	COUNT(CASE
		WHEN [g_1].[DataValue] % 2 = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT [g_1].[DataValue]),
	COUNT(CASE
		WHEN [g_1].[DataValue] % 2 = 0 THEN 1
		ELSE NULL
	END)
FROM
	[AggregationData] [g_1]
WHERE
	[g_1].[DataValue] IS NOT NULL
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AggregationData') IS NOT NULL)
	DROP TABLE [AggregationData]

