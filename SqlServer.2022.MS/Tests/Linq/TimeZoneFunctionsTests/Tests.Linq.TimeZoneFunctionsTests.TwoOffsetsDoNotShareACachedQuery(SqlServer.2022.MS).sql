-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	SwitchOffset([r].[Dto], N'+02:00')
FROM
	[ZonedRow] [r]

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	SwitchOffset([r].[Dto], N'-01:30')
FROM
	[ZonedRow] [r]

