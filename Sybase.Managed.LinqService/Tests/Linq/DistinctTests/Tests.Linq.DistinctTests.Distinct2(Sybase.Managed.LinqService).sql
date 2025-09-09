BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

