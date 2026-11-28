-- SqlServer.2019
SELECT TOP (2)
	[r].[Dt]
FROM
	[DateRow] [r]

-- SqlServer.2019
SELECT TOP (2)
	ToDateTimeOffset([r].[Dt], N'-01:30')
FROM
	[DateRow] [r]

