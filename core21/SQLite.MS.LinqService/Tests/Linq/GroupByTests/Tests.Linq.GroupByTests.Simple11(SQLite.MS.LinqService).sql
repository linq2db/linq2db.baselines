﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[c1],
	[t1].[ChildID]
FROM
	(
		SELECT
			[selectParam].[ParentID] + 1 as [c1],
			[selectParam].[ChildID]
		FROM
			[GrandChild] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[ChildID]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID NVarChar -- String
SET     @ParentID = 2
DECLARE @ChildID_1  -- Int32
SET     @ChildID_1 = 11

SELECT
	[elemParam].[ChildID]
FROM
	[GrandChild] [elemParam]
WHERE
	([elemParam].[ParentID] + 1 = @ParentID AND [elemParam].[ChildID] = @ChildID_1)

