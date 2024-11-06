BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [CreateTableTypes]
(
	[Id]         Int         NOT NULL,
	[StringEnum] NVarChar(2) NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnum VarWChar(2) -- String
SET     @StringEnum = '14'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnum]
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnum VarWChar(1) -- String
SET     @StringEnum = '4'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnum]
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[StringEnum]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [CreateTableTypes]

