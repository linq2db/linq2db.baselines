BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[sample_class]', N'U') IS NOT NULL)
	DROP TABLE [sample_class]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[sample_class]', N'U') IS NULL)
	CREATE TABLE [sample_class]
	(
		[id]    Int          NOT NULL,
		[value] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [sample_class]
(
	[id],
	[value]
)
VALUES
(1,N'Str_1'),
(2,N'Str_2'),
(3,N'Str_3'),
(4,N'Str_4'),
(5,N'Str_5'),
(6,N'Str_6'),
(7,N'Str_7'),
(8,N'Str_8'),
(9,N'Str_9'),
(10,N'Str_10'),
(11,N'Str_11'),
(12,N'Str_12'),
(13,N'Str_13'),
(14,N'Str_14'),
(15,N'Str_15'),
(16,N'Str_16'),
(17,N'Str_17'),
(18,N'Str_18'),
(19,N'Str_19'),
(20,N'Str_20')

BeforeExecute
-- SqlServer.2014
DECLARE @p BigInt -- Int64
SET     @p = 5

SELECT
	[c_1].[value],
	[c_1].[id]
FROM
	(
		SELECT * FROM [sample_class] where [id] >= @p and [id] < 15
	) [c_1]
WHERE
	[c_1].[id] > 10
ORDER BY
	[c_1].[id]

BeforeExecute
-- SqlServer.2014
DECLARE @startId Int -- Int32
SET     @startId = 5
DECLARE @endId Int -- Int32
SET     @endId = 15

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
-- SqlServer.2014

IF (OBJECT_ID(N'[sample_class]', N'U') IS NOT NULL)
	DROP TABLE [sample_class]

