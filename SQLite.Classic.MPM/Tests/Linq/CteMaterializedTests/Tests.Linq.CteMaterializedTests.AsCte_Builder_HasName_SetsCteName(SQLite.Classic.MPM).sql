-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [CustomName] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[Child] [c_1]
	WHERE
		[c_1].[ParentID] > 1
)
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [CustomName] [c_2] ON [p].[ParentID] = [c_2].[ParentID]

