-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	CAST((DateDiff_Big(day, [r].[Dto], (
		SELECT
			[b].[Dto]
		FROM
			[ZonedRow] [b]
		WHERE
			[b].[Id] = 2
	)) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[Dto], (
		SELECT
			[b].[Dto]
		FROM
			[ZonedRow] [b]
		WHERE
			[b].[Id] = 2
	)) AS Int), [r].[Dto]), (
		SELECT
			[b].[Dto]
		FROM
			[ZonedRow] [b]
		WHERE
			[b].[Id] = 2
	)) / 100 AS Float) / 36000000000
FROM
	[ZonedRow] [r]
WHERE
	[r].[Id] = 1

