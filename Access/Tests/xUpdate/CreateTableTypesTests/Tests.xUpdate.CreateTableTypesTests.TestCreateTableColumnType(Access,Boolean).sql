BeforeExecute
-- Access AccessOleDb

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [CreateTableTypes]
(
	[Id]      Int NOT NULL,
	[Boolean] Bit NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Boolean Boolean
SET     @Boolean = False

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Boolean]
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Boolean Boolean
SET     @Boolean = True

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Boolean]
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Boolean]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CreateTableTypes]

