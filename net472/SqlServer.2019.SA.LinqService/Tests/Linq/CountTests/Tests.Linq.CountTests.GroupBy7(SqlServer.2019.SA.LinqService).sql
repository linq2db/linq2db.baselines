BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Count(*),
	Max([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

