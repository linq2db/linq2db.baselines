-- SqlServer.2008.MS SqlServer.2008

SELECT
	[g_2].[ChildId],
	[g_2].[ParentId],
	COUNT(*)
FROM
	(
		SELECT
			1 as [ChildId],
			2 as [ParentId]
		FROM
			[Child] [g_1]
		WHERE
			1 = 0
	) [g_2]
GROUP BY
	[g_2].[ChildId],
	[g_2].[ParentId]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

