-- SqlServer.SA SqlServer.2019
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.SA SqlServer.2019
SELECT TOP (2)
	DatePart(hour, SwitchOffset([r].[Dto], N'-01:30'))
FROM
	[ZonedRow] [r]

