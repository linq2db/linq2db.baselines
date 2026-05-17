-- Access.Jet.Odbc AccessODBC

SELECT
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	((
		SELECT
			[o].[ParentID],
			[g_1].[Value1],
			[g_1].[ParentID] as [ParentID_1]
		FROM
			(
				SELECT DISTINCT
					[a_ParentID2].[ParentID],
					[a_ParentID2].[Value1]
				FROM
					[Child] [t1]
						INNER JOIN [Parent] [a_ParentID2] ON ([t1].[ParentID] = [a_ParentID2].[ParentID])
			) [g_1],
			[Child] [o]
	) [sub]
		INNER JOIN [Parent] [a_ParentID2_1] ON ([sub].[ParentID] = [a_ParentID2_1].[ParentID] AND ([sub].[Value1] = [a_ParentID2_1].[Value1] OR [sub].[Value1] IS NULL AND [a_ParentID2_1].[Value1] IS NULL) AND [sub].[ParentID_1] = [a_ParentID2_1].[ParentID]))
		LEFT JOIN [Parent] [a_Parent] ON ([sub].[ParentID] = [a_Parent].[ParentID])

