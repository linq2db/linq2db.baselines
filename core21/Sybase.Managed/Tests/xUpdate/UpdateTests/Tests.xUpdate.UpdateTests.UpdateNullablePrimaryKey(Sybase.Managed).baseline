BeforeExecute
-- Sybase.Managed Sybase
DECLARE @GrandChildID Integer -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 10000

UPDATE
	[GrandChild]
SET
	[t1].[GrandChildID] = @GrandChildID
FROM
	[GrandChild] [t1]
WHERE
	[t1].[ParentID] = @ParentID AND [t1].[ChildID] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @GrandChildID Integer -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 10000
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 111

UPDATE
	[GrandChild]
SET
	[t1].[GrandChildID] = @GrandChildID
FROM
	[GrandChild] [t1]
WHERE
	[t1].[ParentID] = @ParentID AND [t1].[ChildID] = @ChildID

