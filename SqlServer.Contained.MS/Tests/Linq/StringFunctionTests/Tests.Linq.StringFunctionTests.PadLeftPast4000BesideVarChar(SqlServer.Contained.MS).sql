-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (2)
	IIF(LEN([t].[V50] || N'.') >= 6001, [t].[V50], REPLICATE('b', 6000 - (LEN([t].[V50] || N'.') - 1)) || [t].[V50])
FROM
	[ShortVarCharRow] [t]

