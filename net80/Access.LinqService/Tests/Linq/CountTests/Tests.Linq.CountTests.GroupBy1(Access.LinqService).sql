BeforeExecute
-- Access AccessOleDb

SELECT
	Count([t1].[ParentID])
FROM
	[Child] [t2]
		LEFT JOIN (
			SELECT
				[ch].[ParentID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ChildID] > 20
			GROUP BY
				[ch].[ParentID]
		) [t1] ON ([t2].[ParentID] = [t1].[ParentID])
GROUP BY
	[t2].[ParentID]

