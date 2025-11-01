-- SqlServer.2014

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[TimeSpanAsTicks] [r]
WHERE
	[r].[Value] = CAST(-1200000000 AS BIGINT)

