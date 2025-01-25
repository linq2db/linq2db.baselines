BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @groupId Int -- Int32
SET     @groupId = 2

SELECT
	[g_2].[ChildID],
	[g_2].[group_1],
	[g_2].[COUNT_1],
	[g_2].[c1]
FROM
	(
		SELECT
			[a_Parent].[ParentID] as [group_1],
			COUNT(*) as [COUNT_1],
			[g_1].[ChildID],
			(COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER()) as [c1]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[g_1].[ChildID],
			[a_Parent].[ParentID]
	) [g_2]
WHERE
	[g_2].[group_1] = @groupId
ORDER BY
	[g_2].[COUNT_1] DESC

