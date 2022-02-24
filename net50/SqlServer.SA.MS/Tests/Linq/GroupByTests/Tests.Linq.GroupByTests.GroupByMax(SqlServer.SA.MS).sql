BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Max([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

