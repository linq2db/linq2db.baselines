BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[TimeSpanAsTicks] [r]
WHERE
	[r].[Value] = CAST(-1200000000 AS BIGINT)

