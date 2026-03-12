-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	CASE
		WHEN [t].[EnumValue] = N'S' THEN N'Second'
		WHEN [t].[EnumValue] = N'T' THEN N'Third'
		WHEN [t].[EnumValue] = N'F' THEN N'First'
		ELSE [t].[EnumValue]
	END
FROM
	[MapValueTable] [t]

