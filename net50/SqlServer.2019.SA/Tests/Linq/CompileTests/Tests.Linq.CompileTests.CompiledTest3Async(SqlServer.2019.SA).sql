﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019 (asynchronously)
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT TOP (@p_1)
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019 (asynchronously)
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT TOP (@p_1)
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

