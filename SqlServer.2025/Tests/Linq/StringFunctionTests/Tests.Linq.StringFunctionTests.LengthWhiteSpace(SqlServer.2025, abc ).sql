BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	[t].[Str],
	LEN([t].[Str] + N'.') - 1
FROM
	[TestLengthModel] [t]

