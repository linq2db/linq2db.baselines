BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ParentID_1]
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID],
			[ch].[ParentID] + 1 as [ParentID_1]
		FROM
			[Child] [ch]
	) [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ParentID_1]

