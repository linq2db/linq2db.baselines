﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID  -- Int32
SET     @ParentID = 10000

UPDATE
	[GrandChild] [t1]
SET
	[t1].[GrandChildID] = ?
WHERE
	[t1].[ParentID] = ? AND [t1].[ChildID] IS NULL

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID  -- Int32
SET     @ParentID = 10000
DECLARE @ChildID  -- Int32
SET     @ChildID = 111

UPDATE
	[GrandChild] [t1]
SET
	[t1].[GrandChildID] = ?
WHERE
	[t1].[ParentID] = ? AND [t1].[ChildID] = ?

