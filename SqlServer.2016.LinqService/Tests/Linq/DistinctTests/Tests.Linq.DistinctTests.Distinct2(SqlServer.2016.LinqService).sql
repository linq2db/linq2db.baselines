BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

