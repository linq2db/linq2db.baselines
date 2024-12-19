BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [CreateTableTypes]
(
	[Id]    Int NOT NULL,
	[Int32] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int32 Integer -- Int32
SET     @Int32 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32]
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int32 Integer -- Int32
SET     @Int32 = 1

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32]
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Int32]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [CreateTableTypes]

