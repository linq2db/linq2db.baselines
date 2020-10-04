BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count([t1].[ParentID])
FROM
	[Child] [t2]
		LEFT JOIN (
			SELECT
				[keyParam].[ParentID]
			FROM
				[Child] [keyParam]
			WHERE
				[keyParam].[ChildID] > 20
			GROUP BY
				[keyParam].[ParentID]
		) [t1] ON ([t2].[ParentID] = [t1].[ParentID])
GROUP BY
	[t2].[ParentID]

