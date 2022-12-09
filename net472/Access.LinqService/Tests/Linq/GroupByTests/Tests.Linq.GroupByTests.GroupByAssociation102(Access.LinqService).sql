BeforeExecute
-- Access AccessOleDb

SELECT
	[g_1].[Value1]
FROM
	(
		SELECT
			Count([t2].[ParentID]) as [ex],
			[t3].[Value1]
		FROM
			(
				SELECT
					[a_Parent].[ParentID] as [c1],
					[a_Parent].[Value1]
				FROM
					[GrandChild] [t1]
						INNER JOIN [Parent] [a_Parent] ON ([t1].[ParentID] = [a_Parent].[ParentID])
			) [t3]
				LEFT JOIN (
					SELECT
						[a_Parent_1].[ParentID]
					FROM
						[GrandChild] [_]
							INNER JOIN [Parent] [a_Parent_1] ON ([_].[ParentID] = [a_Parent_1].[ParentID])
					WHERE
						[_].[ChildID] >= 20
					GROUP BY
						[a_Parent_1].[ParentID]
				) [t2] ON ([t3].[c1] = [t2].[ParentID])
		GROUP BY
			[t3].[c1],
			[t3].[Value1]
	) [g_1]
WHERE
	[g_1].[ex] > 2

