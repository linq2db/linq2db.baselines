BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	SUM([ch].[ParentID])
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [p] ON [ch].[ParentID] = [p].[ParentID]
GROUP BY
	[ch].[ChildID]

