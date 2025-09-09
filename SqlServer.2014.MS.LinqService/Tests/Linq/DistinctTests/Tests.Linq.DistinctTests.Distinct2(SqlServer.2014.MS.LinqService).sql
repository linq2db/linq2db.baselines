BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

