BeforeExecute
-- SqlServer.2014 SqlServer.2012

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

