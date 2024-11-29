BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [ConcreteA]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [ConcreteA]
(
	[Id]    Int           NOT NULL,
	[AOnly] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcreteA] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [ConcreteB]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [ConcreteB]
(
	[Id]    Int           NOT NULL,
	[BOnly] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcreteB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @AOnly VarWChar(6) -- String
SET     @AOnly = 'a only'

INSERT INTO [ConcreteA]
(
	[Id],
	[AOnly]
)
VALUES
(
	@Id,
	@AOnly
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BOnly VarWChar(6) -- String
SET     @BOnly = 'b only'

INSERT INTO [ConcreteB]
(
	[Id],
	[BOnly]
)
VALUES
(
	@Id,
	@BOnly
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[e].[Id],
	[e].[AOnly],
	IIF(False, 0, NULL),
	IIF(False, '', NULL)
FROM
	[ConcreteA] [e]
UNION ALL
SELECT
	IIF(False, 0, NULL),
	IIF(False, '', NULL),
	[e_1].[Id],
	[e_1].[BOnly]
FROM
	[ConcreteB] [e_1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [ConcreteB]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [ConcreteA]

