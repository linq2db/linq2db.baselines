-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'FOUR')

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] IN ('THREE') OR [s].[Enum] IS NULL)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'TWO')

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN ('TWO') AND [s].[Enum] IS NOT NULL)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN ('THREE', 'TWO') OR [s].[Enum] IS NULL)

