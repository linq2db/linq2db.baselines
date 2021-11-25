BeforeExecute
-- SqlServer.2005

SELECT
	[ch].[ChildID] + 1,
	Sum([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID] + 1

