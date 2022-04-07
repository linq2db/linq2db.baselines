BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Max([t4].[ChildID]),
	Count([t1].[ParentID]),
	Count([t2].[ParentID]),
	Count([t3].[ParentID])
FROM
	(([Child] [t4]
		LEFT JOIN (
			SELECT
				[ch].[ParentID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ChildID] > 20
			GROUP BY
				[ch].[ParentID]
		) [t1] ON ([t4].[ParentID] = [t1].[ParentID]))
		LEFT JOIN (
			SELECT
				[ch_1].[ParentID]
			FROM
				[Child] [ch_1]
			WHERE
				[ch_1].[ChildID] > 20
			GROUP BY
				[ch_1].[ParentID]
		) [t2] ON ([t4].[ParentID] = [t2].[ParentID]))
		LEFT JOIN (
			SELECT
				[ch_2].[ParentID]
			FROM
				[Child] [ch_2]
			WHERE
				[ch_2].[ChildID] > 10
			GROUP BY
				[ch_2].[ParentID]
		) [t3] ON ([t4].[ParentID] = [t3].[ParentID])
GROUP BY
	[t4].[ParentID]

