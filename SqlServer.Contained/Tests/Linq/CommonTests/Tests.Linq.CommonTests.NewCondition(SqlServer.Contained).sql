﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 100)
FROM
	[Parent] [p]

