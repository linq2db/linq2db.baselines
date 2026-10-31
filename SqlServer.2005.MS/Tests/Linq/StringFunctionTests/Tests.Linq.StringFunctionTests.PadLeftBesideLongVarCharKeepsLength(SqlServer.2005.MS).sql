-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	CASE
		WHEN LEN(CAST([t].[Notes] AS NVarChar(Max)) + N'.') >= 7001
			THEN [t].[Notes]
		ELSE REPLICATE(N'b', 7000 - (LEN(CAST([t].[Notes] AS NVarChar(Max)) + N'.') - 1)) + CAST([t].[Notes] AS NVarChar(Max))
	END
FROM
	[LongVarCharRow] [t]

