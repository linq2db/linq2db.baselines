BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Max([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

