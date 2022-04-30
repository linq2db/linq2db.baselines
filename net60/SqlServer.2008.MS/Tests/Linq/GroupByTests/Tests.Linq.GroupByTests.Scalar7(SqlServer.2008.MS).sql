BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

