BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[m_1].[c1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, N'1', N'2'), N'3') as [c1]
		FROM
			[Child] [g_1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[c1] = IIF([d].[ParentID] > 2, IIF([d].[ParentID] > 3, N'1', N'2'), N'3')

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[g_2].[c1]
FROM
	(
		SELECT
			IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, N'1', N'2'), N'3') as [c1]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[c1]

