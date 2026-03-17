-- Sybase.Managed Sybase

SELECT TOP 1
	CASE
		WHEN [t].[EnumValue] = 'S' THEN 'Second'
		WHEN [t].[EnumValue] = 'T' THEN 'Third'
		WHEN [t].[EnumValue] = 'F' THEN 'First'
		ELSE [t].[EnumValue]
	END
FROM
	[MapValueTable] [t]

