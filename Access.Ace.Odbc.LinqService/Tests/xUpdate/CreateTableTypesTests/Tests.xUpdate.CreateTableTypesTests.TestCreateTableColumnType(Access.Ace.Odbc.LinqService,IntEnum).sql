BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [CreateTableTypes]
(
	[Id]      Int NOT NULL,
	[IntEnum] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @IntEnum  -- Int32
SET     @IntEnum = 11

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnum]
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
DECLARE @IntEnum  -- Int32
SET     @IntEnum = 60

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnum]
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
	[t1].[IntEnum]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CreateTableTypes]

