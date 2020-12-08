BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	IIF([p].[Value1] IS NULL, 0, [p].[Value1]) > 0

