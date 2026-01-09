-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	CASE
		WHEN [t].[EnumValue] = N'S' THEN N'Second'
		WHEN [t].[EnumValue] = N'T' THEN N'Third'
		WHEN [t].[EnumValue] = N'F' THEN N'First'
		ELSE [t].[EnumValue]
	END
FROM
	[MapValueTable] [t]

