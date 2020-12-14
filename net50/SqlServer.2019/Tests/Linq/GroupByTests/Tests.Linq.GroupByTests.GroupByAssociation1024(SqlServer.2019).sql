BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
					[a_Parent_4].[ParentID] = [a_Parent].[ParentID] AND
					[_].[ChildID] >= 20
			) as [cnt],
			(
				SELECT
					Sum([p].[ParentID])
				FROM
					[GrandChild] [p]
						INNER JOIN [Parent] [a_Parent_1] ON [p].[ParentID] = [a_Parent_1].[ParentID]
				WHERE
					[a_Parent_4].[ParentID] = [a_Parent_1].[ParentID] AND
					[p].[ChildID] >= 19
			) as [Sum_1],
			(
				SELECT
					Max([p_1].[ParentID])
				FROM
					[GrandChild] [p_1]
						INNER JOIN [Parent] [a_Parent_2] ON [p_1].[ParentID] = [a_Parent_2].[ParentID]
				WHERE
					[a_Parent_4].[ParentID] = [a_Parent_2].[ParentID] AND
					[p_1].[ChildID] >= 19
			) as [Max_1],
			(
				SELECT
					Max([p_2].[ParentID])
				FROM
					[GrandChild] [p_2]
						INNER JOIN [Parent] [a_Parent_3] ON [p_2].[ParentID] = [a_Parent_3].[ParentID]
				WHERE
					[a_Parent_4].[ParentID] = [a_Parent_3].[ParentID] AND
					[p_2].[ChildID] >= 18
			) as [ex],
			[a_Parent_4].[Value1]
		FROM
			[GrandChild] [t1]
				INNER JOIN [Parent] [a_Parent_4] ON [t1].[ParentID] = [a_Parent_4].[ParentID]
		GROUP BY
			[a_Parent_4].[ParentID],
			[a_Parent_4].[Value1]
	) [g_1]
WHERE
	[g_1].[cnt] > 2 AND
	[g_1].[Sum_1] > 0 AND
	[g_1].[Max_1] > 0 AND
	[g_1].[ex] > 0

