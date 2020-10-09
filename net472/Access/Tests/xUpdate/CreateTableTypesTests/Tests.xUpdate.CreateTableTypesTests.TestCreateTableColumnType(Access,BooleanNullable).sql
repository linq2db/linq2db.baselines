BeforeExecute
-- Access AccessOleDb

CREATE TABLE [CreateTableTypes]
(
	[Id]              Int NOT NULL,
	[BooleanNullable] Bit     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BooleanNullable Boolean
SET     @BooleanNullable = False

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BooleanNullable Boolean
SET     @BooleanNullable = True

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- Access AccessOleDb

SELECT 
	[t1].[Id], 
	[t1].[BooleanNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CreateTableTypes]

