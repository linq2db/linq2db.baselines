-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	[r].[Dto]
FROM
	[ZonedRow] [r]

-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	DatePart(hour, SwitchOffset([r].[Dto], N'-01:30'))
FROM
	[ZonedRow] [r]

