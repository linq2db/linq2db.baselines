-- SQLite.Classic.MPU SQLite.Classic SQLite
WITH [prev] ([ParentID], [ChildID])
AS
(
	SELECT
		[c_1].[ParentID],
		[c_1].[ChildID]
	FROM
		[Child] [c_1]
	WHERE
		[c_1].[ChildID] = 11
	UNION ALL
	SELECT
		[c_2].[ParentID],
		[c_2].[ChildID]
	FROM
		[prev] [t1]
			INNER JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
			INNER JOIN [Child] [c_2] ON [t1].[ChildID] + 10 = [c_2].[ChildID]
	WHERE
		[a_Parent].[ParentID] > 0
)
SELECT
	[t2].[ChildID]
FROM
	[prev] [t2]
ORDER BY
	[t2].[ChildID]

