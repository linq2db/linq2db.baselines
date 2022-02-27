BeforeExecute
-- SqlServer.2012

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	IIF([p].[Value1] IS NULL, 0, [p].[Value1]) > 0

