BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
					([t2].[c1] = [a_Parent].[ParentID] OR [t2].[c1] IS NULL AND [a_Parent].[ParentID] IS NULL) AND
					[_].[ChildID] >= 20
			) as [ex],
			[t2].[Value1]
		FROM
			(
				SELECT
					[a_Parent_1].[ParentID] as [c1],
					[a_Parent_1].[Value1]
				FROM
					[GrandChild] [t1]
						INNER JOIN [Parent] [a_Parent_1] ON [t1].[ParentID] = [a_Parent_1].[ParentID]
			) [t2]
		GROUP BY
			[t2].[c1],
			[t2].[Value1]
	) [g_1]
WHERE
	[g_1].[ex] > 2

