-- Access.Ace.Odbc AccessODBC

SELECT
	LCase(Mid(CStr([t].[Id]), 2, 36))
FROM
	[TableWithGuid] [t]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) = 'x'

