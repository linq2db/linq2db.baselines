BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*),
	Max([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

