﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

