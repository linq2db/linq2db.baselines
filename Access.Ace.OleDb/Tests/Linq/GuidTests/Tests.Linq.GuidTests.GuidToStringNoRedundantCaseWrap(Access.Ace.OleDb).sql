-- Access.Ace.OleDb AccessOleDb

SELECT
	LCase(Mid(CStr([t].[Id]), 2, 36))
FROM
	[TableWithGuid] [t]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) = 'x'

