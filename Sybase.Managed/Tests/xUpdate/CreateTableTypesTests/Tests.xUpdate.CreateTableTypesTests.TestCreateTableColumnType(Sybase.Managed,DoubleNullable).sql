BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateTableTypes') IS NOT NULL)
	DROP TABLE [CreateTableTypes]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateTableTypes') IS NULL)
	EXECUTE('
		CREATE TABLE [CreateTableTypes]
		(
			[Id]             Int   NOT NULL,
			[DoubleNullable] Float     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DoubleNullable Double
SET     @DoubleNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DoubleNullable]
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DoubleNullable Double
SET     @DoubleNullable = 4.1299999999999999

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DoubleNullable]
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[DoubleNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateTableTypes') IS NOT NULL)
	DROP TABLE [CreateTableTypes]

