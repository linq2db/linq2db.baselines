-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	CASE
		WHEN [t].[EnumValue] = N'F' THEN N'First'
		WHEN [t].[EnumValue] = N'S' THEN N'Second'
		WHEN [t].[EnumValue] = N'T' THEN N'Third'
		ELSE [t].[EnumValue]
	END
FROM
	[MapValueTable] [t]

