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
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ChildID] > 30
			GROUP BY
				[c_1].[ParentID]
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

