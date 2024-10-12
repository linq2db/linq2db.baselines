BeforeExecute
-- SqlServer.2005

SELECT
	SUM([ch].[ParentID])
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [p] ON [ch].[ParentID] = [p].[ParentID]
GROUP BY
	[ch].[ChildID]

