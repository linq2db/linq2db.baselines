BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[ID_1],
	[t].[ID_2]
FROM
	(
		SELECT
			[ch].[ParentID] + [p].[ParentID] as [ID],
			[ch].[ParentID] as [ID_1],
			[p].[ParentID] as [ID_2]
		FROM
			[Child] [ch]
				INNER JOIN [Parent] [p] ON ([ch].[ParentID] = [p].[ParentID])
	) [t]
WHERE
	[t].[ID] > 2

