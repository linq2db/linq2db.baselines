BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

