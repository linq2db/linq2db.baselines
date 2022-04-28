﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Src]
(
	[Id]   Int         NOT NULL,
	[Int]  Int             NULL,
	[Enum] NVarChar(5)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = NULL
DECLARE @Enum VarWChar -- String
SET     @Enum = NULL

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2
DECLARE @Enum VarWChar(3) -- String
SET     @Enum = 'TWO'

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'FOUR')

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', NULL)

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] IN ('THREE', 'TWO')

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN (NULL, 'TWO')

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[Enum] NOT IN ('THREE', 'TWO')

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

