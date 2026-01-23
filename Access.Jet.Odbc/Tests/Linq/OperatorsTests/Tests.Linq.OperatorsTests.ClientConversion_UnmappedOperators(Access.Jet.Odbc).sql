-- Access.Jet.Odbc AccessODBC

SELECT
	[i].[Id]
FROM
	[Tender] [i]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Tender] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{00000000-0000-0000-0000-000000000000}'

SELECT TOP 1
	[r].[Id]
FROM
	[Tender] [r]
WHERE
	[r].[Id] = ?

-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[i].[Id]
FROM
	[Tender] [i]

