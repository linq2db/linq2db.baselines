BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

