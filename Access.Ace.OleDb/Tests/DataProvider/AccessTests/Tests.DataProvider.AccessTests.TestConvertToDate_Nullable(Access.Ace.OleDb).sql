BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([r].[datetimeDataType] IS NOT NULL, DateValue([r].[datetimeDataType]), NULL)
FROM
	[AllTypes] [r]

