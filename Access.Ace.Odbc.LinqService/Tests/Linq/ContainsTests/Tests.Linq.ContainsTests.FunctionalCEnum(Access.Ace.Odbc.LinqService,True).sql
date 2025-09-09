BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value4___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (?, ?)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] IN (?) OR [s].[CEnum] IS NULL)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (?, ?)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (?) AND [s].[CEnum] IS NOT NULL)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value3___'
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (?, ?) OR [s].[CEnum] IS NULL)

