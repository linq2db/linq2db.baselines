BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	SUM([ch].[ParentID])
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [p] ON [ch].[ParentID] = [p].[ParentID]
GROUP BY
	[ch].[ChildID]

