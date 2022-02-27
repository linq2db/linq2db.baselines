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
				[ch].[ParentID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ChildID] > 20
			GROUP BY
				[ch].[ParentID]
		) [t1] ON ([t3].[ParentID] = [t1].[ParentID]))
		LEFT JOIN (
			SELECT
				[ch_1].[ParentID]
			FROM
				[Child] [ch_1]
			WHERE
				[ch_1].[ChildID] > 10
			GROUP BY
				[ch_1].[ParentID]
		) [t2] ON ([t3].[ParentID] = [t2].[ParentID])
GROUP BY
	[t3].[ParentID]

