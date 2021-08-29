BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[cnt]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [cnt],
				[a_Parent].[ParentID],
				[a_Parent].[Value1]
			FROM
				[Child] [c_1]
					LEFT JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
			GROUP BY
				[a_Parent].[ParentID],
				[a_Parent].[Value1]
		) [t1] ON (([t1].[ParentID] = [p].[ParentID] AND ([t1].[Value1] = [p].[Value1] OR [t1].[Value1] IS NULL AND [p].[Value1] IS NULL)))

