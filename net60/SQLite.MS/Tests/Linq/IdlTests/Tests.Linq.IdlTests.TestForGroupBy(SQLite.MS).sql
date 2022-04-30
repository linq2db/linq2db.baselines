﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[ChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (2)
GROUP BY
	[x].[ChildID]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ChildID  -- Int32
SET     @ChildID = 21

SELECT
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (2) AND [x].[ChildID] = @ChildID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ChildID  -- Int32
SET     @ChildID = 22

SELECT
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (2) AND [x].[ChildID] = @ChildID

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[ChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (3)
GROUP BY
	[x].[ChildID]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ChildID  -- Int32
SET     @ChildID = 31

SELECT
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (3) AND [x].[ChildID] = @ChildID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ChildID  -- Int32
SET     @ChildID = 32

SELECT
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (3) AND [x].[ChildID] = @ChildID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ChildID  -- Int32
SET     @ChildID = 33

SELECT
	[x].[GrandChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (3) AND [x].[ChildID] = @ChildID

