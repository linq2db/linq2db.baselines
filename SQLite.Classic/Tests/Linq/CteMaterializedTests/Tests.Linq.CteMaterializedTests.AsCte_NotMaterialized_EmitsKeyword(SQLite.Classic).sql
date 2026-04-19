-- SQLite.Classic SQLite

WITH [CTE_1] ([ParentID])
AS NOT MATERIALIZED
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
		INNER JOIN [CTE_1] [c_2] ON [p].[ParentID] = [c_2].[ParentID]

