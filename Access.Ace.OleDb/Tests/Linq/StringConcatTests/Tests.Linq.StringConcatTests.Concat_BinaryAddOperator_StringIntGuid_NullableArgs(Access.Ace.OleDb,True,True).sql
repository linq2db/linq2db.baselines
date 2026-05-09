-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF(IIF([t].[Value2] IS NULL, '', IIF([t].[Value2] IS NOT NULL, CStr([t].[Value2]), NULL)) IS NULL, '', IIF([t].[Value1] IS NULL, '', [t].[Value1]) + IIF([t].[Value2] IS NULL, '', IIF([t].[Value2] IS NOT NULL, CStr([t].[Value2]), NULL))) + IIF([t].[Value3] IS NULL, '', LCase(Mid(CStr([t].[Value3]), 2, 36)))
FROM
	[StringConcatIntGuidNullEntity] [t]
ORDER BY
	[t].[ID]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatIntGuidNullEntity] [t1]

