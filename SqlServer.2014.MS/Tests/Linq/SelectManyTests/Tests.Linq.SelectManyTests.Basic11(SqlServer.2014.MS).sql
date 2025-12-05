-- SqlServer.2014.MS SqlServer.2014

SELECT
	[o].[ParentID]
FROM
	(
		SELECT
			[a_ParentID2].[ParentID] as [ParentID2],
			[a_ParentID2].[Value1]
		FROM
			[Child] [t1]
				INNER JOIN [Parent] [a_ParentID2] ON [t1].[ParentID] = [a_ParentID2].[ParentID]
		GROUP BY
			[a_ParentID2].[ParentID],
			[a_ParentID2].[Value1]
	) [g_1]
		INNER JOIN [Child] [o]
			INNER JOIN [Parent] [a_ParentID2_1] ON [o].[ParentID] = [a_ParentID2_1].[ParentID]
		ON [a_ParentID2_1].[ParentID] = [g_1].[ParentID2] AND ([a_ParentID2_1].[Value1] = [g_1].[Value1] OR [a_ParentID2_1].[Value1] IS NULL AND [g_1].[Value1] IS NULL)

