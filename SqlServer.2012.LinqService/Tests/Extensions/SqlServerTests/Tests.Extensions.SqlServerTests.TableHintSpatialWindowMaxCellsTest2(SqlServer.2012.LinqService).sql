BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (SPATIAL_WINDOW_MAX_CELLS=10)

