﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, -2)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] IN (-1) OR [s].[Int] IS NULL)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (-1, 2)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (2) AND [s].[Int] IS NOT NULL)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Int] NOT IN (-1, 2) OR [s].[Int] IS NULL)

