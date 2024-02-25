﻿BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
	) [t2]
ORDER BY
	[t2].[ParentID]
OFFSET @take ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

