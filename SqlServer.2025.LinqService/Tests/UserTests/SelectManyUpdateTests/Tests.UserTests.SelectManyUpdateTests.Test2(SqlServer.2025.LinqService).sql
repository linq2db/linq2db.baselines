﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @ChildID Int -- Int32
SET     @ChildID = 10

UPDATE
	[a_Children_1]
SET
	[a_Children_1].[ChildID] = @ChildID
FROM
	[Parent] [x]
		INNER JOIN [Child] [a_Children] ON [x].[ParentID] = [a_Children].[ParentID]
		INNER JOIN [Child] [a_Children_1] ON [a_Children].[ParentID] = [a_Children_1].[ChildID]
WHERE
	1 = 0

