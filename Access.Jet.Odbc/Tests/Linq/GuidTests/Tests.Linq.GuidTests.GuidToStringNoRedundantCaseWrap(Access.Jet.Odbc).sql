-- Access.Jet.Odbc AccessODBC

SELECT
	LCase(Mid(CStr([t].[Id]), 2, 36))
FROM
	[TableWithGuid] [t]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) = 'x'

