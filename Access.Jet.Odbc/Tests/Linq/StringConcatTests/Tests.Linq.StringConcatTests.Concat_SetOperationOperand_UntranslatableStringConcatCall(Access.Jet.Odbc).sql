-- Access.Jet.Odbc AccessODBC
SELECT
	CStr('p_'),
	[e].[Id],
	CStr('N'),
	[e].[Name]
FROM
	[ConcatSetOpEntity] [e]
WHERE
	[e].[ParentId] IS NULL
UNION ALL
SELECT
	CStr('c_'),
	[e_1].[Id],
	CStr('N'),
	[e_1].[Name]
FROM
	[ConcatSetOpEntity] [e_1]
WHERE
	[e_1].[ParentId] IS NOT NULL

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[ParentId],
	[t1].[Name]
FROM
	[ConcatSetOpEntity] [t1]

