﻿BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 3

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[Value1],
			ROW_NUMBER() OVER (ORDER BY [t1].[ParentID]) as [RN]
		FROM
			[Parent] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= @skip_1

BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 3

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[Value1],
			ROW_NUMBER() OVER (ORDER BY [t1].[ParentID]) as [RN]
		FROM
			[Parent] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= @skip_1

