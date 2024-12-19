BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcreteA') IS NOT NULL)
	DROP TABLE [ConcreteA]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcreteA') IS NULL)
	EXECUTE('
		CREATE TABLE [ConcreteA]
		(
			[Id]    Int           NOT NULL,
			[AOnly] NVarChar(255)     NULL,

			CONSTRAINT [PK_ConcreteA] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcreteB') IS NOT NULL)
	DROP TABLE [ConcreteB]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcreteB') IS NULL)
	EXECUTE('
		CREATE TABLE [ConcreteB]
		(
			[Id]    Int           NOT NULL,
			[BOnly] NVarChar(255)     NULL,

			CONSTRAINT [PK_ConcreteB] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @AOnly UniVarChar(6) -- String
SET     @AOnly = 'a only'

INSERT INTO [ConcreteA]
(
	[Id],
	[AOnly]
)
VALUES
(
	@Id,
	@AOnly
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BOnly UniVarChar(6) -- String
SET     @BOnly = 'b only'

INSERT INTO [ConcreteB]
(
	[Id],
	[BOnly]
)
VALUES
(
	@Id,
	@BOnly
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[e].[Id],
	[e].[AOnly],
	NULL,
	NULL
FROM
	[ConcreteA] [e]
UNION ALL
SELECT
	NULL,
	NULL,
	[e_1].[Id],
	[e_1].[BOnly]
FROM
	[ConcreteB] [e_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcreteB') IS NOT NULL)
	DROP TABLE [ConcreteB]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcreteA') IS NOT NULL)
	DROP TABLE [ConcreteA]

