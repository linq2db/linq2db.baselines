BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Coalesce([p].[Value1], 0) > 0

