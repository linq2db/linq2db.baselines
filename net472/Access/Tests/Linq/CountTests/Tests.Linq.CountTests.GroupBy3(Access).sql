BeforeExecute
-- Access AccessOleDb

SELECT
	[ch_1].[ParentID] + 1,
	Min([ch_1].[ChildID]),
	Count([t1].[ParentID])
FROM
	[Child] [ch_1]
		LEFT JOIN (
			SELECT
				[ch].[ParentID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ChildID] > 25 AND [ch].[ParentID] > 0
			GROUP BY
				[ch].[ParentID]
		) [t1] ON ([ch_1].[ParentID] + 1 = [t1].[ParentID] + 1)
WHERE
	[ch_1].[ParentID] > 0
GROUP BY
	[ch_1].[ParentID] + 1

