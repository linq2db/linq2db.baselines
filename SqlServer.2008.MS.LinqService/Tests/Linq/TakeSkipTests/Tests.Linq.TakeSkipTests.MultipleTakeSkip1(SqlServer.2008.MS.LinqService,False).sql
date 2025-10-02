﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[t2].[Id],
	[t2].[Value_1]
FROM
	(
		SELECT
			[t1].[Id],
			[t1].[Value] as [Value_1],
			ROW_NUMBER() OVER (ORDER BY [t1].[Value]) as [RN]
		FROM
			[TakeSkipClass] [t1]
	) [t2]
WHERE
	[t2].[RN] > 3 AND [t2].[RN] <= 4
ORDER BY
	[t2].[Value_1]

