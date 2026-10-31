-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (2)
	IIF(LEN(CAST([t].[Notes] AS NVarChar(Max)) + N'.') >= 7001, [t].[Notes], REPLICATE(N'b', 7000 - (LEN(CAST([t].[Notes] AS NVarChar(Max)) + N'.') - 1)) + CAST([t].[Notes] AS NVarChar(Max)))
FROM
	[LongVarCharRow] [t]

