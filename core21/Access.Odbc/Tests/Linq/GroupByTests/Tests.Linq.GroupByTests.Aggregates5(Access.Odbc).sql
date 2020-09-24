BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count([t1].[ParentID]),
	Count([t2].[ParentID]),
	Count(*)
FROM
	([Child] [t3]
		LEFT JOIN (
			SELECT
				[keyParam].[ParentID]
			FROM
				[Child] [keyParam]
			WHERE
				[keyParam].[ChildID] > 30
			GROUP BY
				[keyParam].[ParentID]
		) [t1] ON ([t3].[ParentID] = [t1].[ParentID]))
		LEFT JOIN (
			SELECT
				[_].[ParentID]
			FROM
				[Child] [_]
			WHERE
				[_].[ChildID] > 30
			GROUP BY
				[_].[ParentID]
		) [t2] ON ([t3].[ParentID] = [t2].[ParentID])
GROUP BY
	[t3].[ParentID]

