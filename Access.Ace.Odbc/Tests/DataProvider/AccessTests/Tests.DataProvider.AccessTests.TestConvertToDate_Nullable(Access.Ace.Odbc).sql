-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([r].[datetimeDataType] IS NOT NULL, DateValue([r].[datetimeDataType]), NULL)
FROM
	[AllTypes] [r]

