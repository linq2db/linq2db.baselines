-- Access.Ace.Odbc AccessODBC
SELECT
	CStr('p_'),
	[e].[Id],
	CStr('N'),
	[e].[Name]
FROM
	[ConcatSetOpEntity] [e]
WHERE
	[e].[Name] IS NOT NULL
UNION
SELECT
	CStr('p_'),
	[e_1].[Id],
	CStr('N'),
	[e_1].[Name]
FROM
	[ConcatSetOpEntity] [e_1]
WHERE
	[e_1].[ParentId] IS NULL

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[ParentId],
	[t1].[Name]
FROM
	[ConcatSetOpEntity] [t1]

