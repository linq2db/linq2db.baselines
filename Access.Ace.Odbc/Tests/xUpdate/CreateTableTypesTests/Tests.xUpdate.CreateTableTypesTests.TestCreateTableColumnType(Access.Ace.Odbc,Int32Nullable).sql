BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [CreateTableTypes]
(
	[Id]            Int NOT NULL,
	[Int32Nullable] Int     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int32Nullable Int -- Int32
SET     @Int32Nullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32Nullable]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int32Nullable Int -- Int32
SET     @Int32Nullable = 2

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32Nullable]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Int32Nullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CreateTableTypes]

