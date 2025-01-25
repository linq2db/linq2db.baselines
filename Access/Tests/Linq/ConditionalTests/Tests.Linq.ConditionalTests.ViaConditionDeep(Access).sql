BeforeExecute
-- Access AccessOleDb

DROP TABLE [ConditionalData]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [ConditionalData]
(
	[Id]         Int           NOT NULL,
	[StringProp] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConditionalData] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringProp VarWChar(7) -- String
SET     @StringProp = 'String1'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringProp VarWChar(7) -- String
SET     @StringProp = 'String2'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StringProp VarWChar -- String
SET     @StringProp = NULL

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @StringProp VarWChar(7) -- String
SET     @StringProp = 'String4'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @StringProp VarWChar(7) -- String
SET     @StringProp = 'String5'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @StringProp VarWChar -- String
SET     @StringProp = NULL

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @StringProp VarWChar(7) -- String
SET     @StringProp = 'String7'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @StringProp VarWChar(7) -- String
SET     @StringProp = 'String8'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @StringProp VarWChar -- String
SET     @StringProp = NULL

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @StringProp VarWChar(8) -- String
SET     @StringProp = 'String10'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	@Id,
	@StringProp
)

BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT
	[x].[Id],
	IIF([x].[StringProp] = '1' OR [x].[StringProp] IS NULL, True, False),
	[x].[StringProp],
	[x].[StringProp] + '2'
FROM
	[ConditionalData] [x]
WHERE
	IIF([x].[StringProp] = '1' OR [x].[StringProp] IS NULL, '2', IIF([x].[StringProp] = '2', [x].[StringProp], [x].[StringProp] + '2')) LIKE '%2' AND
	IIF([x].[StringProp] = '1' OR [x].[StringProp] IS NULL, @p, IIF([x].[StringProp] = '2', 1, 2)) = 2

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ConditionalData]

