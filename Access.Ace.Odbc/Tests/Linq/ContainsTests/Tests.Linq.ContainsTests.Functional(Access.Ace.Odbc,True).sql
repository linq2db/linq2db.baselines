-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] IN (-1) OR [s].[Int] IS NULL)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (2) AND [s].[Int] IS NOT NULL)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (-1, 2) OR [s].[Int] IS NULL)

