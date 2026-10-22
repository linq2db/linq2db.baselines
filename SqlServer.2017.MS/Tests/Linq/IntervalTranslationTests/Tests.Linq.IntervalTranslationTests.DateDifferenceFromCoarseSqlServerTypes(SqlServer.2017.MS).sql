-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	(DateDiff_Big(day, [r].[OnDate], [r].[End]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OnDate], [r].[End]) AS Int), [r].[OnDate]), [r].[End]) / 100,
	(DateDiff_Big(day, [r].[OnSmall], [r].[End]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OnSmall], [r].[End]) AS Int), [r].[OnSmall]), [r].[End]) / 100
FROM
	[CoarseDateRow] [r]

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	(DateDiff_Big(day, [r].[OnDate], [r].[End]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OnDate], [r].[End]) AS Int), [r].[OnDate]), [r].[End]) / 100,
	(DateDiff_Big(day, [r].[OnSmall], [r].[End]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OnSmall], [r].[End]) AS Int), [r].[OnSmall]), [r].[End]) / 100
FROM
	[CoarseDateRow] [r]

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	(DateDiff_Big(day, [r].[OnDate], [r].[End]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OnDate], [r].[End]) AS Int), [r].[OnDate]), [r].[End]) / 100,
	(DateDiff_Big(day, [r].[OnSmall], [r].[End]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OnSmall], [r].[End]) AS Int), [r].[OnSmall]), [r].[End]) / 100
FROM
	[CoarseDateRow] [r]

