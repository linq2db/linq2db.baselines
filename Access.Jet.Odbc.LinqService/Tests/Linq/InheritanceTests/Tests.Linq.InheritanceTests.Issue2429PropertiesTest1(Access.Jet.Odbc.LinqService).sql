BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [BaseTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [BaseTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BaseValue Int -- Int32
SET     @BaseValue = 100

INSERT INTO [BaseTable]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [BaseTable]

