BeforeExecute
-- Access AccessOleDb

SELECT
	Count([t1].[ParentID])
FROM
	[Child] [t2]
		LEFT JOIN (
			SELECT
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ChildID] > 20
			GROUP BY
				[ch].[ParentID],
				[ch].[ChildID]
		) [t1] ON (([t2].[ParentID] = [t1].[ParentID] AND [t2].[ChildID] = [t1].[ChildID]))
GROUP BY
	[t2].[ParentID],
	[t2].[ChildID]

