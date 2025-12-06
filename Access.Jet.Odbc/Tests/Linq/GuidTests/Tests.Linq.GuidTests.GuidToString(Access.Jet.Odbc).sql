-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	LCase(Mid(CStr([t].[Id]), 2, 36))
FROM
	[TableWithGuid] [t]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE '%63d[-]0f%'

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE 'bc7b6%'

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE '%8f4[-]53%'

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE '8f4[-]53%'

