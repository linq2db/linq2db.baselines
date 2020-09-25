BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Max([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

