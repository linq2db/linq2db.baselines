BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value4___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] IN (@In) OR [s].[CEnum] IS NULL)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- AnsiString
SET     @In_1 = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (@NotIn) AND [s].[CEnum] IS NOT NULL)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- AnsiString
SET     @NotIn_1 = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (@NotIn, @NotIn_1) OR [s].[CEnum] IS NULL)

