﻿BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t2].[Value_1]
FROM
	(
		SELECT
			[t1].[Value] as [Value_1],
			ROW_NUMBER() OVER (ORDER BY [t1].[Value]) as [RN]
		FROM
			[TakeSkipClass] [t1]
	) [t2]
WHERE
	[t2].[RN] > 3 AND [t2].[RN] <= 5
ORDER BY
	[t2].[Value_1]

