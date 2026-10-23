-- Access.Jet.Odbc AccessODBC
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{00000000-0000-0000-0000-000000000000}'
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{00000000-0000-0000-0000-000000000000}'
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{00000000-0000-0000-0000-000000000000}'

SELECT
	CStr('p_'),
	[e].[Id],
	CStr('N'),
	IIF(False, ?, NULL),
	IIF(False, '', NULL),
	[e].[Name],
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	IIF(False, ?, NULL),
	IIF(False, '', NULL)
FROM
	[ConcatSetOpEntity] [e]
WHERE
	[e].[ParentId] IS NULL
UNION ALL
SELECT
	IIF(False, '', NULL),
	IIF(False, ?, NULL),
	IIF(False, '', NULL),
	[e_1].[Id],
	CStr('N'),
	[e_1].[Name],
	IIF(False, '', NULL),
	CStr('p_'),
	[e_1].[ParentId],
	CStr('N')
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

