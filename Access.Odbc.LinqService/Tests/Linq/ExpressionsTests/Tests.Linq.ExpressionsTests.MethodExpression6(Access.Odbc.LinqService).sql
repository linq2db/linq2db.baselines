BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[cnt]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [cnt],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON ([t1].[ParentID] = [p].[ParentID])

