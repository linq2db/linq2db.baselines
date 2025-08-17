BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @groupId Int -- Int32
SET     @groupId = 2

SELECT
	[t1].[ChildID],
	[t1].[ParentID],
	[t1].[count_1],
	[t1].[percents]
FROM
	(
		SELECT
			[g_1].[ChildID],
			[a_Parent].[ParentID],
			COUNT(*) as [count_1],
			(COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER()) as [percents]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[g_1].[ChildID],
			[a_Parent].[ParentID]
	) [t1]
WHERE
	[t1].[ParentID] = @groupId
ORDER BY
	[t1].[count_1] DESC

