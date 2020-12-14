﻿BeforeExecute
-- SqlCe

CREATE TABLE [sample_class]
(
	[id]    Int          NOT NULL,
	[value] NVarChar(50)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [sample_class]
(
	[id],
	[value]
)
SELECT 1,'Str_1' UNION ALL
SELECT 2,'Str_2' UNION ALL
SELECT 3,'Str_3' UNION ALL
SELECT 4,'Str_4' UNION ALL
SELECT 5,'Str_5' UNION ALL
SELECT 6,'Str_6' UNION ALL
SELECT 7,'Str_7' UNION ALL
SELECT 8,'Str_8' UNION ALL
SELECT 9,'Str_9' UNION ALL
SELECT 10,'Str_10' UNION ALL
SELECT 11,'Str_11' UNION ALL
SELECT 12,'Str_12' UNION ALL
SELECT 13,'Str_13' UNION ALL
SELECT 14,'Str_14' UNION ALL
SELECT 15,'Str_15' UNION ALL
SELECT 16,'Str_16' UNION ALL
SELECT 17,'Str_17' UNION ALL
SELECT 18,'Str_18' UNION ALL
SELECT 19,'Str_19' UNION ALL
SELECT 20,'Str_20'

BeforeExecute
-- SqlCe
DECLARE @startId BigInt -- Int64
SET     @startId = 5
DECLARE @p_1 Int -- Int32
SET     @p_1 = 14

SELECT
	[c_1].[value],
	[c_1].[id]
FROM
	(
		SELECT * FROM [sample_class] where [id] >= @startId and [id] < @p_1
	) [c_1]
WHERE
	[c_1].[id] > 10

BeforeExecute
-- SqlCe
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

BeforeExecute
-- SqlCe

DROP TABLE [sample_class]

