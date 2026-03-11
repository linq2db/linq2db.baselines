-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (SPATIAL_WINDOW_MAX_CELLS=10)

