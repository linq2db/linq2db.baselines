-- SQLite.MS SQLite
SELECT
	[x].[ParentID],
	[q].[ParentID]
FROM
	[Parent] [x],
	[Parent] [q]
WHERE
	[x].[Value1] <> [q].[Value1] OR [x].[Value1] IS NULL AND [q].[Value1] IS NOT NULL OR
	[x].[Value1] IS NOT NULL AND [q].[Value1] IS NULL

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.MS SQLite
SELECT
	[x].[ParentID],
	[q].[ParentID]
FROM
	[Parent] [x],
	[Parent] [q]
WHERE
	[x].[Value1] <> [q].[Value1] OR [x].[Value1] IS NULL AND [q].[Value1] IS NOT NULL OR
	[x].[Value1] IS NOT NULL AND [q].[Value1] IS NULL

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

