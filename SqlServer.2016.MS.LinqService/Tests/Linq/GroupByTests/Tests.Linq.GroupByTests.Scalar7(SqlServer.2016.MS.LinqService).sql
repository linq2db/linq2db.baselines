BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

