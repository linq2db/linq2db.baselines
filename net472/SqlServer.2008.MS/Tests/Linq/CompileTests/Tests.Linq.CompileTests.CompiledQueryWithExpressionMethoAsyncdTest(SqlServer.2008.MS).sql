﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT TOP (@take)
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @ParentID
ORDER BY
	[x].[ParentID] DESC

