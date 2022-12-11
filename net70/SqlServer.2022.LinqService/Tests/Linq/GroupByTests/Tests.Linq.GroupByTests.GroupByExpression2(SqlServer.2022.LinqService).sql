BeforeExecute
-- SqlServer.2022

SELECT
	[selectParam].[ChildID],
	Avg([selectParam].[ParentID])
FROM
	[Child] [selectParam]
GROUP BY
	[selectParam].[ChildID]

