-- Access.Jet.OleDb AccessOleDb

SELECT
	[sub].[ParentID]
FROM
	(
		SELECT
			[o].[ParentID],
			[g_1].[Value1],
			[g_1].[ParentID2]
		FROM
			(
				SELECT DISTINCT
					[a_ParentID2].[ParentID] as [ParentID2],
					[a_ParentID2].[Value1]
				FROM
					[Child] [t1]
						INNER JOIN [Parent] [a_ParentID2] ON ([t1].[ParentID] = [a_ParentID2].[ParentID])
			) [g_1],
			[Child] [o]
	) [sub]
		INNER JOIN [Parent] [a_ParentID2_1] ON ([sub].[ParentID] = [a_ParentID2_1].[ParentID] AND ([a_ParentID2_1].[Value1] = [sub].[Value1] OR [a_ParentID2_1].[Value1] IS NULL AND [sub].[Value1] IS NULL) AND [a_ParentID2_1].[ParentID] = [sub].[ParentID2])

