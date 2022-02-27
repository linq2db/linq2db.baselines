BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Max([t3].[ChildID]),
	Count([t1].[ParentID]),
	Count([t2].[ParentID])
FROM
	([Child] [t3]
		LEFT JOIN (
			SELECT
				[keyParam].[ParentID]
			FROM
				[Child] [keyParam]
			WHERE
				[keyParam].[ChildID] > 20
			GROUP BY
				[keyParam].[ParentID]
		) [t1] ON ([t3].[ParentID] = [t1].[ParentID]))
		LEFT JOIN (
			SELECT
				[keyParam_1].[ParentID]
			FROM
				[Child] [keyParam_1]
			WHERE
				[keyParam_1].[ChildID] > 10
			GROUP BY
				[keyParam_1].[ParentID]
		) [t2] ON ([t3].[ParentID] = [t2].[ParentID])
GROUP BY
	[t3].[ParentID]

