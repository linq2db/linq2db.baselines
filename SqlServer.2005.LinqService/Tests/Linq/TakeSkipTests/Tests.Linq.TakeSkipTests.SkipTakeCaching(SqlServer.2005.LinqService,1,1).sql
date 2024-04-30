﻿BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[Value1],
			ROW_NUMBER() OVER (ORDER BY [t1].[Value1]) as [RN]
		FROM
			[Parent] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= 2

