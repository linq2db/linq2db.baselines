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
			[Id]       Int      NOT NULL,
			[DateTime] DateTime NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTime DateTime
SET     @DateTime = '2000-01-01'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTime DateTime
SET     @DateTime = '2018-11-24 01:02:03'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[DateTime]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateTableTypes') IS NOT NULL)
	DROP TABLE [CreateTableTypes]

