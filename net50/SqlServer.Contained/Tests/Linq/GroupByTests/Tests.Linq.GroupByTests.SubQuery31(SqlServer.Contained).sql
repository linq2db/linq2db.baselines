BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[ch].[ChildID] + 1,
	Sum([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ChildID] + 1

