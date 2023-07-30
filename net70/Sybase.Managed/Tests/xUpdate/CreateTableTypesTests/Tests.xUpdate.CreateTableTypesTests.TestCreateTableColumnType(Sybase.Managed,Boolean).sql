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
			[Id]      Int NOT NULL,
			[Boolean] Bit NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Boolean Bit -- Boolean
SET     @Boolean = 0

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Boolean Bit -- Boolean
SET     @Boolean = 1

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
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Boolean]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateTableTypes') IS NOT NULL)
	DROP TABLE [CreateTableTypes]

