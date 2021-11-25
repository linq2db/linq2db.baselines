BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[selectParam].[ChildID] + 1,
	Sum([selectParam].[ParentID])
FROM
	[Child] [selectParam]
GROUP BY
	[selectParam].[ChildID] + 1

