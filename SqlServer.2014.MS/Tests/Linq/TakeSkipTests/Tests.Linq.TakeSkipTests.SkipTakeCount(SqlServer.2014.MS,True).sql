﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
		ORDER BY
			1
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) [t2]

