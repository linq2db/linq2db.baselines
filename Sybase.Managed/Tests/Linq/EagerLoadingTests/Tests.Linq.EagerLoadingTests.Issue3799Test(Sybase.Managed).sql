BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3799Item') IS NOT NULL)
	DROP TABLE [Test3799Item]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3799Item') IS NULL)
	EXECUTE('
		CREATE TABLE [Test3799Item]
		(
			[Id]       Int           NOT NULL,
			[ParentId] Int               NULL,
			[Name]     NVarChar(255) NOT NULL,

			CONSTRAINT [PK_Test3799Item] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
SELECT 1,NULL,'root' UNION ALL
SELECT 2,1,'child 1' UNION ALL
SELECT 3,2,'child 1.1' UNION ALL
SELECT 4,2,'child 1.2' UNION ALL
SELECT 5,1,'child 2' UNION ALL
SELECT 6,5,'child 2.1' UNION ALL
SELECT 7,5,'child 2.1'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Name]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t1].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[item_1].[Id]
				FROM
					[Test3799Item] [item_1]
			) [t1]
				INNER JOIN [Test3799Item] [d] ON [t1].[Id] = [d].[ParentId]
	) [m_1]
		INNER JOIN [Test3799Item] [d_1] ON [m_1].[Id] = [d_1].[ParentId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[d].[Name],
	[d].[Id]
FROM
	[Test3799Item] [m_1]
		INNER JOIN [Test3799Item] [d] ON [m_1].[Id] = [d].[ParentId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[Test3799Item] [item_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3799Item') IS NOT NULL)
	DROP TABLE [Test3799Item]

