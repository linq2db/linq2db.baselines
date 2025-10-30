BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID],
	[t1].[Sum_1],
	[t2].[Count_1]
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT
				SUM([g_1].[ChildID] * [g_1].[GrandChildID]) as [Sum_1]
			FROM
				[GrandChild] [g_1]
			WHERE
				[g_1].[ChildID] = [c_1].[ChildID] AND [g_1].[GrandChildID] > 0
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[GrandChild] [g_2]
			WHERE
				[g_2].[ChildID] = [c_1].[ChildID] AND [g_2].[GrandChildID] > 0
		) [t2]
WHERE
	[c_1].[ParentID] = @id
ORDER BY
	[c_1].[ParentID] DESC,
	[c_1].[ChildID]

