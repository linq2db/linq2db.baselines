BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

