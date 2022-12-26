BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[selectParam].[ParentID] + 1,
	[selectParam].[ChildID]
FROM
	[GrandChild] [selectParam]
GROUP BY
	[selectParam].[ParentID] + 1,
	[selectParam].[ChildID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 11

SELECT
	[elemParam].[ChildID]
FROM
	[GrandChild] [elemParam]
WHERE
	[elemParam].[ParentID] + 1 = @ParentID AND [elemParam].[ChildID] = @ChildID

