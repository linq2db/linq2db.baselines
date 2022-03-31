BeforeExecute
-- SqlServer.2012

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

