BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[ChildID],
	AVG([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

