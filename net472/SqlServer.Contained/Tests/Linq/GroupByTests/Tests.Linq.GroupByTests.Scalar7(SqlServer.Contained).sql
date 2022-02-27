BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

