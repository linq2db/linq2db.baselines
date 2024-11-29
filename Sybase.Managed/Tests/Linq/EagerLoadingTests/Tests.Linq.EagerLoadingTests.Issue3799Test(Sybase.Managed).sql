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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Test3799Item') IS NOT NULL)
	DROP TABLE [Test3799Item]

