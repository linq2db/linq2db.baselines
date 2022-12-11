BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[selectParam].[ChildID],
	Avg([selectParam].[ParentID])
FROM
	[Child] [selectParam]
GROUP BY
	[selectParam].[ChildID]

