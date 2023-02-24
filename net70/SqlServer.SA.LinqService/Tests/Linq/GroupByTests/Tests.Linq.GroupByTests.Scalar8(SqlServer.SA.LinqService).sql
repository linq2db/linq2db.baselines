BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

