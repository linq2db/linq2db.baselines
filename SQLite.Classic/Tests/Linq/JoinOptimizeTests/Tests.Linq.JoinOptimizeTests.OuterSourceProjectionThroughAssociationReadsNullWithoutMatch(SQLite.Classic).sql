-- SQLite.Classic SQLite
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [v_1].[not_null] IS NOT NULL THEN [p].[Value1]
		ELSE NULL
	END
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		LEFT JOIN (
			SELECT
				1 as [not_null],
				[v].[ParentID],
				[v].[ChildID]
			FROM
				[GrandChild] [v]
		) [v_1] ON [c_1].[ParentID] = [v_1].[ParentID] AND [c_1].[ChildID] = [v_1].[ChildID]

