﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 1
DECLARE @take Int -- Int32
SET     @take = 7
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ChildID],
			[t1].[ParentID]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ChildID] DESC
		OFFSET @skip_1 ROWS FETCH NEXT @take ROWS ONLY 
	) [t2]
ORDER BY
	[t2].[ChildID]
OFFSET @skip ROWS

