BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [ConditionalData]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [ConditionalData]
(
	[Id]         Int           NOT NULL,
	[StringProp] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConditionalData] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String1'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String2'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @StringProp NVarChar -- String
SET     @StringProp = NULL

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String4'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String5'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @StringProp NVarChar -- String
SET     @StringProp = NULL

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String7'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String8'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @StringProp NVarChar -- String
SET     @StringProp = NULL

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @StringProp NVarChar(8) -- String
SET     @StringProp = 'String10'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @StringProp NVarChar(2) -- String
SET     @StringProp = '-1'

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	IIF([x].[StringProp] = '1' AND [x].[StringProp] IS NOT NULL OR [x].[StringProp] IS NULL, True, False),
	IIF([x].[StringProp] = '2' AND [x].[StringProp] IS NOT NULL, True, False),
	[x].[StringProp],
	1,
	[x].[StringProp] + '2',
	2
FROM
	[ConditionalData] [x]
WHERE
	IIF([x].[StringProp] = '1' AND [x].[StringProp] IS NOT NULL OR [x].[StringProp] IS NULL, '2', IIF([x].[StringProp] = '2' AND [x].[StringProp] IS NOT NULL, [x].[StringProp], [x].[StringProp] + '2')) LIKE '%2' AND
	IIF([x].[StringProp] = '1' AND [x].[StringProp] IS NOT NULL OR [x].[StringProp] IS NULL, NULL, IIF([x].[StringProp] = '2' AND [x].[StringProp] IS NOT NULL, 1, 2)) = 2 AND
	IIF([x].[StringProp] = '1' AND [x].[StringProp] IS NOT NULL OR [x].[StringProp] IS NULL, NULL, IIF([x].[StringProp] = '2' AND [x].[StringProp] IS NOT NULL, 1, 2)) IS NOT NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [ConditionalData]

