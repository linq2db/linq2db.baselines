﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int -- Int32
SET     @ParentID = 10000

UPDATE
	[GrandChild]
SET
	[GrandChildID] = @GrandChildID
WHERE
	[GrandChild].[ParentID] = @ParentID AND [GrandChild].[ChildID] IS NULL

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int -- Int32
SET     @ParentID = 10000
DECLARE @ChildID Int -- Int32
SET     @ChildID = 111

UPDATE
	[GrandChild]
SET
	[GrandChildID] = @GrandChildID
WHERE
	[GrandChild].[ParentID] = @ParentID AND [GrandChild].[ChildID] = @ChildID

