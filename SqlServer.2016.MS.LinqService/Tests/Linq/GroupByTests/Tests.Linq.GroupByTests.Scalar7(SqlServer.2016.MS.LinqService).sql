BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

