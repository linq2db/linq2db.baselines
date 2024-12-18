BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NULL)
	CREATE TABLE [AggregationData]
	(
		[GroupId]   Int   NOT NULL,
		[DataValue] Float     NULL
	)

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012

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
					[x].[DataValue]
				FROM
					[AggregationData] [x]
				WHERE
					[x].[DataValue] IS NOT NULL AND [t1].[Key_1] = [x].[GroupId]
			) [x_1]
		WHERE
			(Convert(Int, [x_1].[DataValue]) % 2) = 0 AND Convert(Int, [x_1].[DataValue]) IS NOT NULL
	),
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
					[t_1].[DataValue] IS NOT NULL AND
					[t1].[Key_1] = [t_1].[GroupId] AND
					(Convert(Int, [t_1].[DataValue]) % 2) = 0 AND
					Convert(Int, [t_1].[DataValue]) IS NOT NULL
			) [t2]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x_2].[DataValue]
				FROM
					[AggregationData] [x_2]
				WHERE
					[x_2].[DataValue] IS NOT NULL AND
					[t1].[Key_1] = [x_2].[GroupId] AND
					(Convert(Int, [x_2].[DataValue]) % 2) = 0 AND
					Convert(Int, [x_2].[DataValue]) IS NOT NULL
			) [x_3]
		WHERE
			(Convert(Int, [x_3].[DataValue]) % 2) = 0 AND Convert(Int, [x_3].[DataValue]) IS NOT NULL
	),
	[t1].[COUNT_5],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[t_2].[DataValue]
				FROM
					[AggregationData] [t_2]
				WHERE
					[t_2].[DataValue] IS NOT NULL AND
					[t1].[Key_1] = [t_2].[GroupId] AND
					(Convert(Int, [t_2].[DataValue]) % 2) = 0 AND
					Convert(Int, [t_2].[DataValue]) IS NOT NULL
			) [t3]
	)
FROM
	(
		SELECT
			[t].[GroupId] as [Key_1],
			COUNT(*) as [COUNT_1],
			COUNT(IIF((Convert(Int, [t].[DataValue]) % 2) = 0 AND Convert(Int, [t].[DataValue]) IS NOT NULL, 1, NULL)) as [COUNT_2],
			COUNT(*) as [COUNT_3],
			COUNT(DISTINCT [t].[DataValue]) as [COUNT_4],
			COUNT(IIF((Convert(Int, [t].[DataValue]) % 2) = 0 AND Convert(Int, [t].[DataValue]) IS NOT NULL, 1, NULL)) as [COUNT_5]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
		GROUP BY
			[t].[GroupId]
	) [t1]

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

