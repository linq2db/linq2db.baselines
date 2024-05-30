BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3664') IS NOT NULL)
	DROP TABLE [Test3664]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3664') IS NULL)
	EXECUTE('
		CREATE TABLE [Test3664]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_Test3664] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [Test3664]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3664Item') IS NOT NULL)
	DROP TABLE [Test3664Item]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3664Item') IS NULL)
	EXECUTE('
		CREATE TABLE [Test3664Item]
		(
			[Id]     Int NOT NULL,
			[TestId] Int NOT NULL,

			CONSTRAINT [PK_Test3664Item] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Test3664Item]
(
	[Id],
	[TestId]
)
SELECT 11,1 UNION ALL
SELECT 12,1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 12

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[TestId]
FROM
	[Test3664] [m_1]
		INNER JOIN [Test3664Item] [d] ON [m_1].[Id] = [d].[TestId]
WHERE
	[d].[Id] = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id]
FROM
	[Test3664] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3664Item') IS NOT NULL)
	DROP TABLE [Test3664Item]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3664') IS NOT NULL)
	DROP TABLE [Test3664]

