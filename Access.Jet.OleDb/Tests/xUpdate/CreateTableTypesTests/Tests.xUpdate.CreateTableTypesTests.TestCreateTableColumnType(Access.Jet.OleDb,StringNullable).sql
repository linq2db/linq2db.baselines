BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [CreateTableTypes]
(
	[String] NVarChar(255)     NULL,
	[Id]     Int           NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String VarWChar -- String
SET     @String = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String VarWChar(23) -- String
SET     @String = 'test max value nullable'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [CreateTableTypes]

