BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NULL)
	CREATE TABLE [AggregationData]
	(
		[GroupId]   Int   NOT NULL,
		[DataValue] Float     NULL
	)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005

SELECT
	[g_1].[GroupId],
	AVG([g_1].[DataValue]),
	AVG([g_1].[DataValue]),
	AVG(CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN [g_1].[DataValue]
		ELSE NULL
	END),
	AVG(CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN [g_1].[DataValue]
		ELSE NULL
	END),
	CAST(AVG(DISTINCT [g_1].[DataValue]) AS Decimal(38, 17)),
	AVG(DISTINCT CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN [g_1].[DataValue]
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN [g_1].[DataValue]
		ELSE NULL
	END)
FROM
	[AggregationData] [g_1]
WHERE
	[g_1].[DataValue] IS NOT NULL
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

