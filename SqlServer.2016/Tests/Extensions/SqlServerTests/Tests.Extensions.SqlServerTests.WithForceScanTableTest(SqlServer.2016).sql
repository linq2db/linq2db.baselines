-- SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (ForceScan)

