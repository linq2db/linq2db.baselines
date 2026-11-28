-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (2)
	[r].[Dt]
FROM
	[DateRow] [r]

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (2)
	ToDateTimeOffset([r].[Dt], N'-01:30')
FROM
	[DateRow] [r]

