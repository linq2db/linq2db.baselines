BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[g_1].[Value1]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[GrandChild] [_]
						INNER JOIN [Parent] [a_Parent] ON [_].[ParentID] = [a_Parent].[ParentID]
				WHERE
					[a_Parent_1].[ParentID] = [a_Parent].[ParentID] AND
					[_].[ChildID] >= 20
			) as [ex],
			[a_Parent_1].[Value1]
		FROM
			[GrandChild] [t1]
				INNER JOIN [Parent] [a_Parent_1] ON [t1].[ParentID] = [a_Parent_1].[ParentID]
		GROUP BY
			[a_Parent_1].[ParentID],
			[a_Parent_1].[Value1]
	) [g_1]
WHERE
	[g_1].[ex] > 2

