BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [AggregationData]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NULL)
	CREATE TABLE [AggregationData]
	(
		[GroupId]   Int   NOT NULL,
		[DataValue] Float     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 1
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 1
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 1
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 1
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 1
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 1
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 2
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 2
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 2
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 2
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 2
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 2
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 3
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 3
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 3
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 3
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 3
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019
DECLARE @GroupId Int -- Int32
SET     @GroupId = 3
DECLARE @DataValue Float -- Double
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
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Key_1],
	[t1].[COUNT_1],
	[t1].[COUNT_2],
	[t1].[COUNT_3],
	[t1].[COUNT_4],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x].[DataValue] as [DistinctWithFilter]
				FROM
					[AggregationData] [x]
				WHERE
					[x].[DataValue] IS NOT NULL AND [t1].[Key_1] = [x].[GroupId]
			) [x_1]
		WHERE
			(Convert(Int, [x_1].[DistinctWithFilter]) % 2) = 0
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[t].[DataValue]
				FROM
					[AggregationData] [t]
				WHERE
					[t].[DataValue] IS NOT NULL AND [t1].[Key_1] = [t].[GroupId] AND
					(Convert(Int, [t].[DataValue]) % 2) = 0
			) [t2]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x_2].[DataValue] as [FilterDistinctWithFilter]
				FROM
					[AggregationData] [x_2]
				WHERE
					[x_2].[DataValue] IS NOT NULL AND [t1].[Key_1] = [x_2].[GroupId] AND
					(Convert(Int, [x_2].[DataValue]) % 2) = 0
			) [x_3]
		WHERE
			(Convert(Int, [x_3].[FilterDistinctWithFilter]) % 2) = 0
	),
	[t1].[COUNT_5],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[t_1].[DataValue]
				FROM
					[AggregationData] [t_1]
				WHERE
					[t_1].[DataValue] IS NOT NULL AND [t1].[Key_1] = [t_1].[GroupId] AND
					(Convert(Int, [t_1].[DataValue]) % 2) = 0
			) [t3]
	)
FROM
	(
		SELECT
			[g_1].[GroupId] as [Key_1],
			COUNT(*) as [COUNT_1],
			COUNT(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, 1, NULL)) as [COUNT_2],
			COUNT(*) as [COUNT_3],
			COUNT(DISTINCT [g_1].[DataValue]) as [COUNT_4],
			COUNT(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, 1, NULL)) as [COUNT_5]
		FROM
			[AggregationData] [g_1]
		WHERE
			[g_1].[DataValue] IS NOT NULL
		GROUP BY
			[g_1].[GroupId]
	) [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [AggregationData]

