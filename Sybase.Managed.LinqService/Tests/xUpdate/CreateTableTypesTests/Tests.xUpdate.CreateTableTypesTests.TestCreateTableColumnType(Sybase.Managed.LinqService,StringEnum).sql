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
			[Id]         Int         NOT NULL,
			[StringEnum] NVarChar(2) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnum UniVarChar(2) -- String
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnum UniVarChar(1) -- String
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
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[StringEnum]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateTableTypes') IS NOT NULL)
	DROP TABLE [CreateTableTypes]

