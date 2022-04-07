BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID],
	[t2].[Sum_1],
	[t1].[Count1]
FROM
	[Child] [c_1]
		LEFT JOIN (
			SELECT
				Count(*) as [Count1],
				[g_1].[ChildID]
			FROM
				[GrandChild] [g_1]
			WHERE
				[g_1].[GrandChildID] > 0
			GROUP BY
				[g_1].[ChildID]
		) [t1] ON [t1].[ChildID] = [c_1].[ChildID]
		LEFT JOIN (
			SELECT
				Sum([g_2].[ChildID] * [g_2].[GrandChildID]) as [Sum_1],
				[g_2].[ChildID]
			FROM
				[GrandChild] [g_2]
			WHERE
				[g_2].[GrandChildID] > 0
			GROUP BY
				[g_2].[ChildID]
		) [t2] ON [t2].[ChildID] = [c_1].[ChildID]
WHERE
	[c_1].[ParentID] = @id
ORDER BY
	[c_1].[ParentID] DESC

