-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	CAST(([r].[Dto] AT TIME ZONE N'UTC') AS DateTime2)
FROM
	[ZonedRow] [r]

