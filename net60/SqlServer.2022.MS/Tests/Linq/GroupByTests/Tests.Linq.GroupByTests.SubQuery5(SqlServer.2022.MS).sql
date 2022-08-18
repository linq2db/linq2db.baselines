BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Sum([ch].[ParentID])
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [pg] ON [ch].[ParentID] = [pg].[ParentID]
GROUP BY
	[ch].[ChildID]

