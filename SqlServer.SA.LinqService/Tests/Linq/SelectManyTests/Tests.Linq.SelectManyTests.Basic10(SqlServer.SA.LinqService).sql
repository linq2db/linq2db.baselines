BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	(
		SELECT
			[a_ParentID2].[ParentID],
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
			LEFT JOIN [Parent] [a_Parent] ON [o].[ParentID] = [a_Parent].[ParentID]
		ON [g_1].[ParentID] = [a_ParentID2_1].[ParentID] AND ([g_1].[Value1] = [a_ParentID2_1].[Value1] OR [g_1].[Value1] IS NULL AND [a_ParentID2_1].[Value1] IS NULL)

