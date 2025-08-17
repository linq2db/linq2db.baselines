BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (SPATIAL_WINDOW_MAX_CELLS=10)

