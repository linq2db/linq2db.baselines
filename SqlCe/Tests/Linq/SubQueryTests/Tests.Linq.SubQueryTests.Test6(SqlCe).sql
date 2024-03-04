BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID],
	[t1].[Sum_1],
	[t3].[Count_1]
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT
				Sum([g_1].[ChildID] * [g_1].[GrandChildID]) as [Sum_1]
			FROM
				[GrandChild] [g_1]
			WHERE
				[g_1].[ChildID] = [c_1].[ChildID] AND [g_1].[GrandChildID] > 0
		) [t1]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[GrandChild] [t2]
			WHERE
				[t2].[ChildID] = [c_1].[ChildID] AND [t2].[GrandChildID] > 0
		) [t3]
WHERE
	[c_1].[ParentID] = @id
ORDER BY
	[c_1].[ParentID] DESC

