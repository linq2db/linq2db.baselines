BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	LCase(Mid(CStr([t].[Id]), 2, 36))
FROM
	[TableWithGuid] [t]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE '%63d[-]0f%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE 'bc7b6%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE '%8f4[-]53%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	LCase(Mid(CStr([t].[Id]), 2, 36)) LIKE '8f4[-]53%'

