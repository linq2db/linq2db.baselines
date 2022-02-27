BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Max([t1].[cnt])
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [cnt],
				[a_Parent].[ParentID]
			FROM
				[Child] [c_1]
					LEFT JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
			GROUP BY
				[a_Parent].[ParentID]
		) [t1] ON ([t1].[ParentID] = [p].[ParentID])

