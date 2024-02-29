﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] >= 0 AND [ch].[ChildID] <= 100
ORDER BY
	[ch].[ParentID],
	[ch].[ChildID]
OFFSET @skip ROWS

