-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String VarWChar -- String
SET     @String = ''

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

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String VarWChar(7) -- String
SET     @String = 'test 10'

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

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

