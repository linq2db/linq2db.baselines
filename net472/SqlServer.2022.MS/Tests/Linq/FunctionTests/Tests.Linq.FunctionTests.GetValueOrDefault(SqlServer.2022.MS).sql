BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], 0) > 0

