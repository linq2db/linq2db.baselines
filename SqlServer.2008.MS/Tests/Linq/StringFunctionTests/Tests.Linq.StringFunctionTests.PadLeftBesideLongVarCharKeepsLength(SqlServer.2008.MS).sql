-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	CASE
		WHEN LEN(CAST([t].[Notes] AS NVarChar(Max)) + N'.') >= 7001
			THEN [t].[Notes]
		ELSE REPLICATE('b', 7000 - (LEN(CAST([t].[Notes] AS NVarChar(Max)) + N'.') - 1)) + [t].[Notes]
	END
FROM
	[LongVarCharRow] [t]

