BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BaseTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [BaseTable]
(
	[Value] Int NOT NULL,
	[Id]    Int NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @BaseValue Int -- Int32
SET     @BaseValue = 100
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BaseTable]

