BeforeExecute
-- SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (SPATIAL_WINDOW_MAX_CELLS=10)

