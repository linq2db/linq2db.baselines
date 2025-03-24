﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	[x_1].[Key_1],
	SUM([x_1].[MatchScore])
FROM
	(
		SELECT DISTINCT
			[x].[Value1] as [Key_1],
			4 as [MatchScore]
		FROM
			[Parent] [x]
	) [x_1]
GROUP BY
	[x_1].[Key_1]

