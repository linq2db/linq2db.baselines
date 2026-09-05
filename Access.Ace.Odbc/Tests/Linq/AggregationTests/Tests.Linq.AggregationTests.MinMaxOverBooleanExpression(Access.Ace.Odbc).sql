-- Access.Ace.Odbc AccessODBC
SELECT
	MAX(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	MIN(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	MAX(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	MIN(IIF([t1].[Id] = 2, 1, 0))
FROM
	[Item] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	MAX(IIF(IIF([t1].[Id] = 2, True, [t1].[Id] > 1), 1, 0))
FROM
	[Item] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	MIN(IIF(IIF([t1].[Id] = 2, True, [t1].[Id] > 1), 1, 0))
FROM
	[Item] [t1]

