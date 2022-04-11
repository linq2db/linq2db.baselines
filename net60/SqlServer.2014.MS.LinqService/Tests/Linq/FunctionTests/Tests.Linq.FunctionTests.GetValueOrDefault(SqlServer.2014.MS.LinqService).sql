BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], 0) > 0

