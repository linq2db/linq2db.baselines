BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

