BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Count(*),
	Max([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

