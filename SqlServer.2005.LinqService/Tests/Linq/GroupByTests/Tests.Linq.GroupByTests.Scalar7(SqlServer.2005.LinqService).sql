BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

