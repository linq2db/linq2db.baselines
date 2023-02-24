BeforeExecute
-- SQLite.Classic SQLite
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID  -- Int32
SET     @ParentID = 10000

UPDATE
	[GrandChild]
SET
	[GrandChildID] = @GrandChildID
WHERE
	[GrandChild].[ParentID] = @ParentID AND [GrandChild].[ChildID] IS NULL

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID  -- Int32
SET     @ParentID = 10000
DECLARE @ChildID  -- Int32
SET     @ChildID = 111

UPDATE
	[GrandChild]
SET
	[GrandChildID] = @GrandChildID
WHERE
	[GrandChild].[ParentID] = @ParentID AND [GrandChild].[ChildID] = @ChildID

