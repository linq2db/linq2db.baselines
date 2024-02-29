BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(*),
	Max([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

