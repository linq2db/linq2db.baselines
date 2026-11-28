-- SqlServer.2016
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2016
SELECT TOP (2)
	([r].[Dto] AT TIME ZONE N'UTC')
FROM
	[ZonedRow] [r]

-- SqlServer.2016
SELECT TOP (2)
	SwitchOffset([r].[Dto], N'-01:30')
FROM
	[ZonedRow] [r]

