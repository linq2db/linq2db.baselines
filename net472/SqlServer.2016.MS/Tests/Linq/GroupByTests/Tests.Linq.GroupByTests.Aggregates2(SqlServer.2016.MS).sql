BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Sum([t1].[ChildID]),
	Min([t1].[ChildID]),
	Max([t1].[ChildID]),
	Avg([t1].[ChildID]),
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

