BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Sum([ch].[ParentID])
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [pg] ON [ch].[ParentID] = [pg].[ParentID]
GROUP BY
	[ch].[ChildID]

