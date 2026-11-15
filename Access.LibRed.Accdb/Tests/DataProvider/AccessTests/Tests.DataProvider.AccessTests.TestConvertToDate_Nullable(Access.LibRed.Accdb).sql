-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [r].[datetimeDataType] IS NOT NULL THEN DateValue([r].[datetimeDataType])
		ELSE NULL
	END
FROM
	[AllTypes] [r]

