BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

