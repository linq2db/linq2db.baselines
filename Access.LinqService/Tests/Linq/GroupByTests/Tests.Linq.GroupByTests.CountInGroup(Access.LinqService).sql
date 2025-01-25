BeforeExecute
-- Access AccessOleDb

DROP TABLE [AggregationData]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [AggregationData]
(
	[GroupId]   Int   NOT NULL,
	[DataValue] Float     NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb

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
		) [d_1] ON ([m_1].[GroupId] = [d_1].[GroupId])

BeforeExecute
-- Access AccessOleDb

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
				[d].[DataValue] IS NOT NULL AND [d].[DataValue] MOD 2 = 0
		) [d_1] ON ([m_1].[GroupId] = [d_1].[GroupId])

BeforeExecute
-- Access AccessOleDb

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
				[d].[DataValue] IS NOT NULL AND [d].[DataValue] MOD 2 = 0
		) [d_1] ON ([m_1].[GroupId] = [d_1].[GroupId])

BeforeExecute
-- Access AccessOleDb

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
		) [d_1] ON ([m_1].[GroupId] = [d_1].[GroupId])

BeforeExecute
-- Access AccessOleDb

SELECT
	[g_1].[GroupId],
	COUNT(*),
	COUNT(IIF([g_1].[DataValue] MOD 2 = 0, 1, NULL)),
	COUNT(*),
	COUNT(IIF([g_1].[DataValue] MOD 2 = 0, 1, NULL))
FROM
	[AggregationData] [g_1]
WHERE
	[g_1].[DataValue] IS NOT NULL
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [AggregationData]

