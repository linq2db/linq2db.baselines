-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[ParentID],
	[p].[Value1],
	ROW_NUMBER() OVER (PARTITION BY [p].[Value1] ORDER BY (
		SELECT
			1
	))
FROM
	[Parent] [p]

