BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[sample_class]', N'U') IS NOT NULL)
	DROP TABLE [sample_class]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[sample_class]', N'U') IS NULL)
	CREATE TABLE [sample_class]
	(
		[id]    Int          NOT NULL,
		[value] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [sample_class]
(
	[id],
	[value]
)
SELECT 1,N'Str_1' UNION ALL
SELECT 2,N'Str_2' UNION ALL
SELECT 3,N'Str_3' UNION ALL
SELECT 4,N'Str_4' UNION ALL
SELECT 5,N'Str_5' UNION ALL
SELECT 6,N'Str_6' UNION ALL
SELECT 7,N'Str_7' UNION ALL
SELECT 8,N'Str_8' UNION ALL
SELECT 9,N'Str_9' UNION ALL
SELECT 10,N'Str_10' UNION ALL
SELECT 11,N'Str_11' UNION ALL
SELECT 12,N'Str_12' UNION ALL
SELECT 13,N'Str_13' UNION ALL
SELECT 14,N'Str_14' UNION ALL
SELECT 15,N'Str_15' UNION ALL
SELECT 16,N'Str_16' UNION ALL
SELECT 17,N'Str_17' UNION ALL
SELECT 18,N'Str_18' UNION ALL
SELECT 19,N'Str_19' UNION ALL
SELECT 20,N'Str_20'

BeforeExecute
-- SqlServer.2005
DECLARE @startId BigInt -- Int64
SET     @startId = 5

SELECT
	[c_1].[value],
	[c_1].[id]
FROM
	(
		SELECT * FROM [sample_class] where [id] >= @startId and [id] < 14
	) [c_1]
WHERE
	[c_1].[id] > 10
ORDER BY
	[c_1].[id]

BeforeExecute
-- SqlServer.2005
DECLARE @startId Int -- Int32
SET     @startId = 5
DECLARE @endId Int -- Int32
SET     @endId = 14

SELECT
	[t].[value],
	[t].[id]
FROM
	[sample_class] [t]
WHERE
	[t].[id] >= @startId AND [t].[id] < @endId AND [t].[id] > 10
ORDER BY
	[t].[id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[sample_class]', N'U') IS NOT NULL)
	DROP TABLE [sample_class]

