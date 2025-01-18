﻿BeforeExecute
-- SqlServer.2014
DECLARE @p BigInt -- Int64
SET     @p = 5

SELECT
	[c_1].[value],
	[c_1].[id]
FROM
	(
		SELECT * FROM
		[sample_class]
		where [id] >= @p and [id] < 15
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

