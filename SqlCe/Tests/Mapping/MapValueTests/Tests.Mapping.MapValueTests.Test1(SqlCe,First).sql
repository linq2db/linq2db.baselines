-- SqlCe

SELECT TOP (1)
	CASE
		WHEN [t].[EnumValue] = 'F' THEN 'First'
		WHEN [t].[EnumValue] = 'S' THEN 'Second'
		WHEN [t].[EnumValue] = 'T' THEN 'Third'
		ELSE [t].[EnumValue]
	END as [c1]
FROM
	[MapValueTable] [t]

