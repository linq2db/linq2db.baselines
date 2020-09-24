﻿BeforeExecute
-- SqlCe
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int -- Int32
SET     @ParentID = 10000

UPDATE
	[GrandChild]
SET
	[GrandChild].[GrandChildID] = @GrandChildID
WHERE
	[GrandChild].[ParentID] = @ParentID AND [GrandChild].[ChildID] IS NULL

BeforeExecute
-- SqlCe
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int -- Int32
SET     @ParentID = 10000
DECLARE @ChildID Int -- Int32
SET     @ChildID = 111

UPDATE
	[GrandChild]
SET
	[GrandChild].[GrandChildID] = @GrandChildID
WHERE
	[GrandChild].[ParentID] = @ParentID AND [GrandChild].[ChildID] = @ChildID

