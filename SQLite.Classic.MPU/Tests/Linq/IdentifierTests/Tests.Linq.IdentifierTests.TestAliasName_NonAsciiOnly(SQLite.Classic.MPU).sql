-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	[親].[ParentID],
	[親].[Value1]
FROM
	[Parent] [親]
		INNER JOIN [Child] [子] ON [子].[ParentID] = [親].[ParentID]
WHERE
	[親].[ParentID] = @parentId

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

