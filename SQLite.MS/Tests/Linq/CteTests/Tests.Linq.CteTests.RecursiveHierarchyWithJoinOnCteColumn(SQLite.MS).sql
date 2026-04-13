-- SQLite.MS SQLite

WITH [cte] ([ParentID], [ChildID], [Level_1])
AS
(
	SELECT
		[p].[ParentID],
		NULL,
		CAST(0 AS INTEGER)
	FROM
		[Parent] [p]
	UNION ALL
	SELECT
		[c_1].[ParentID],
		[c_1].[ChildID],
		[ct].[Level_1] + 1
	FROM
		[Child] [c_1]
			INNER JOIN [cte] [ct] ON [ct].[ParentID] = [c_1].[ParentID]
	WHERE
		[ct].[Level_1] < 2
)
SELECT
	[h].[ParentID],
	[h].[ChildID],
	[h].[Level_1],
	[p_1].[Value1]
FROM
	[cte] [h]
		INNER JOIN [Parent] [p_1] ON [p_1].[ParentID] = [h].[ChildID]

