-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (2)
	[r].[Dt]
FROM
	[DateRow] [r]

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (2)
	ToDateTimeOffset([r].[Dt], N'-01:30')
FROM
	[DateRow] [r]

