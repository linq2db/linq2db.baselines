-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	IIF([r].[datetimeDataType] IS NOT NULL, DateValue([r].[datetimeDataType]), NULL)
FROM
	[AllTypes] [r]

