BeforeExecute
-- SqlServer.2012

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

