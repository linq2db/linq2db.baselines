BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Src]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Src]
(
	[Id]    Int         NOT NULL,
	[Int]   Int             NULL,
	[Enum]  NVarChar(5)     NULL,
	[CEnum] VarChar(20)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Int  -- Int32
SET     @Int = NULL
DECLARE @Enum NVarChar -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Int  -- Int32
SET     @Int = 2
DECLARE @Enum NVarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC
DECLARE @In VarChar(12) -- AnsiString
SET     @In = '___Value3___'
DECLARE @In VarChar -- AnsiString
SET     @In = NULL

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (?, ?)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (?, ?)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value3___'
DECLARE @NotIn VarChar(12) -- AnsiString
SET     @NotIn = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (?, ?)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Src]

