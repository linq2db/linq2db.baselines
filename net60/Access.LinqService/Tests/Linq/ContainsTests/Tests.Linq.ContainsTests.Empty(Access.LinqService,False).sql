BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Src]
(
	[Id]    Int         NOT NULL,
	[Int]   Int             NULL,
	[Enum]  NVarChar(5)     NULL,
	[CEnum] VarChar(20)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = NULL
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
	@Int_1,
	@Enum,
	@CEnum
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2
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
	@Int_1,
	@Enum,
	@CEnum
)

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 0

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 1

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	1 = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

