BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ConcreteA]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [ConcreteA]
(
	[Id]    Int           NOT NULL,
	[AOnly] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcreteA] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ConcreteB]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [ConcreteB]
(
	[Id]    Int           NOT NULL,
	[BOnly] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcreteB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @AOnly NVarChar(6) -- String
SET     @AOnly = 'a only'

INSERT INTO [ConcreteA]
(
	[Id],
	[AOnly]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BOnly NVarChar(6) -- String
SET     @BOnly = 'b only'

INSERT INTO [ConcreteB]
(
	[Id],
	[BOnly]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ConcreteB]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ConcreteA]

