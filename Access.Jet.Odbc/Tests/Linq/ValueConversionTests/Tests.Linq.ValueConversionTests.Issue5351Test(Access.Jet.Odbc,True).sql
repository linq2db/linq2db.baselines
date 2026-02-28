-- Access.Jet.Odbc AccessODBC

UPDATE
	[Issue5351Table] [x]
SET
	[x].[Test] = NULL
WHERE
	[x].[Id] = 1

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 1

-- Access.Jet.Odbc AccessODBC

UPDATE
	[Issue5351Table] [x]
SET
	[x].[Test] = 'X'
WHERE
	[x].[Id] = 2

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 2

-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Test] = 'X'

