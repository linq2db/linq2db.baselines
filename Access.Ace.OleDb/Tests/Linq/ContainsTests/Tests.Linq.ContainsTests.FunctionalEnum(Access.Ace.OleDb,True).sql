BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Src]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Src]
(
	[Id]    Int         NOT NULL,
	[Int]   Int             NULL,
	[Enum]  NVarChar(5)     NULL,
	[CEnum] VarChar(20)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int Integer -- Int32
SET     @Int = NULL
DECLARE @Enum VarWChar -- String
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
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Enum VarWChar(3) -- String
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
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'FOUR')

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] IN ('THREE') OR [s].[Enum] IS NULL)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'TWO')

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN ('TWO') AND [s].[Enum] IS NOT NULL)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[Enum] NOT IN ('THREE', 'TWO') OR [s].[Enum] IS NULL)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Src]

