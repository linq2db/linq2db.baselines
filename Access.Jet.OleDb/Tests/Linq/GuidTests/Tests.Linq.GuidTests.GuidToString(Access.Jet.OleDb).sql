-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	LCase(Mid(CStr([t].[Id]), 2, 36))
FROM
	[TableWithGuid] [t]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE '%63d[-]0f%'

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE 'bc7b6%'

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE '%8f4[-]53%'

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE '8f4[-]53%'

