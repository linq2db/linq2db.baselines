-- SqlServer.2014
SELECT TOP (2)
	(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) AS Int), [r].[OnDate]) AS DateTime2), [r].[End]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) AS Int), [r].[OnDate]) AS DateTime2), [r].[End]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) AS Int), [r].[OnDate]) AS DateTime2)), [r].[End]) AS BigInt) / 100,
	(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) AS Int), [r].[OnSmall]) AS DateTime2), [r].[End]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) AS Int), [r].[OnSmall]) AS DateTime2), [r].[End]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) AS Int), [r].[OnSmall]) AS DateTime2)), [r].[End]) AS BigInt) / 100
FROM
	[CoarseDateRow] [r]

-- SqlServer.2014
SELECT TOP (2)
	(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) AS Int), [r].[OnDate]) AS DateTime2), [r].[End]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) AS Int), [r].[OnDate]) AS DateTime2), [r].[End]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) AS Int), [r].[OnDate]) AS DateTime2)), [r].[End]) AS BigInt) / 100,
	(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) AS Int), [r].[OnSmall]) AS DateTime2), [r].[End]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) AS Int), [r].[OnSmall]) AS DateTime2), [r].[End]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) AS Int), [r].[OnSmall]) AS DateTime2)), [r].[End]) AS BigInt) / 100
FROM
	[CoarseDateRow] [r]

-- SqlServer.2014
SELECT TOP (2)
	(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) AS Int), [r].[OnDate]) AS DateTime2), [r].[End]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) AS Int), [r].[OnDate]) AS DateTime2), [r].[End]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnDate], [r].[End]) AS BigInt) AS Int), [r].[OnDate]) AS DateTime2)), [r].[End]) AS BigInt) / 100,
	(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) AS Int), [r].[OnSmall]) AS DateTime2), [r].[End]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) AS Int), [r].[OnSmall]) AS DateTime2), [r].[End]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OnSmall], [r].[End]) AS BigInt) AS Int), [r].[OnSmall]) AS DateTime2)), [r].[End]) AS BigInt) / 100
FROM
	[CoarseDateRow] [r]

