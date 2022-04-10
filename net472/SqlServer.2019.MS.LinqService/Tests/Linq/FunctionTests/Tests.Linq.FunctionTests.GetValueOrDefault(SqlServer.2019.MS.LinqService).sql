BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], 0) > 0

