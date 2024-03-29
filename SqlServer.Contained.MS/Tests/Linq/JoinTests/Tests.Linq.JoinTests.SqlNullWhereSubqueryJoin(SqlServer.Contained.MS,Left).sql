﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 10
DECLARE @take_1 Int -- Int32
SET     @take_1 = 10

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	(
		SELECT TOP (@take)
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
	) [p1]
		LEFT JOIN (
			SELECT TOP (@take_1)
				[t2].[ParentID],
				[t2].[Value1]
			FROM
				[Parent] [t2]
		) [p] ON [p1].[ParentID] = [p].[ParentID] AND ([p1].[Value1] = [p].[Value1] OR [p1].[Value1] IS NULL AND [p].[Value1] IS NULL)

