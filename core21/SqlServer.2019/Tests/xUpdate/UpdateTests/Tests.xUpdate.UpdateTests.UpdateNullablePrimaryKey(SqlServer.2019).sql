BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int -- Int32
SET     @ParentID = 10000

UPDATE
	[t1]
SET
	[t1].[GrandChildID] = @GrandChildID
FROM
	[GrandChild] [t1]
WHERE
	[t1].[ParentID] = @ParentID AND [t1].[ChildID] IS NULL

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int -- Int32
SET     @ParentID = 10000
DECLARE @ChildID Int -- Int32
SET     @ChildID = 111

UPDATE
	[t1]
SET
	[t1].[GrandChildID] = @GrandChildID
FROM
	[GrandChild] [t1]
WHERE
	[t1].[ParentID] = @ParentID AND [t1].[ChildID] = @ChildID

