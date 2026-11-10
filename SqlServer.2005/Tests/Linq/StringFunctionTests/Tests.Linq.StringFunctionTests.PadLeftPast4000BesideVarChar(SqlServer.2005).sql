-- SqlServer.2005
SELECT TOP (2)
	CASE
		WHEN LEN([t].[V50] + N'.') >= 6001 THEN [t].[V50]
		ELSE REPLICATE('b', 6000 - (LEN([t].[V50] + N'.') - 1)) + [t].[V50]
	END
FROM
	[ShortVarCharRow] [t]

