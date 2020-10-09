BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[selectParam].[ChildID]
FROM
	[GrandChild] [selectParam]
GROUP BY
	[selectParam].[ParentID] + 1,
	[selectParam].[ChildID]

