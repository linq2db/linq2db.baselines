-- SqlServer.2019
SELECT TOP (2)
	IIF(LEN(CAST([t].[Notes] AS NVarChar(Max)) + N'.') >= 7001, [t].[Notes], REPLICATE('b', 7000 - (LEN(CAST([t].[Notes] AS NVarChar(Max)) + N'.') - 1)) + [t].[Notes])
FROM
	[LongVarCharRow] [t]

