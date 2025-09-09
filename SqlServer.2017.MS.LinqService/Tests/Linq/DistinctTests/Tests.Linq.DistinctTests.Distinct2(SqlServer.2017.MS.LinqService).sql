BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

