-- SqlServer.2016.MS SqlServer.2016
SELECT
	[r].[Id],
	Round([r].[D], 0, 1),
	Round([r].[F], 0, 1),
	Round([r].[N], 0, 1),
	Round([r].[G], 0, 1),
	Round([r].[D], 0, 1),
	Round([r].[F], 0, 1)
FROM
	[TruncateValues] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[N],
	[t1].[G]
FROM
	[TruncateValues] [t1]

