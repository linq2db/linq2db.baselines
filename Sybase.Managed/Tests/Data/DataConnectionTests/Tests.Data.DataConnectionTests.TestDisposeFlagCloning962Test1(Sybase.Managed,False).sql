BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Categories') IS NOT NULL)
	DROP TABLE [Categories]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Categories') IS NULL)
	EXECUTE('
		CREATE TABLE [Categories]
		(
			[CategoryID]   Int           IDENTITY NOT NULL,
			[CategoryName] NVarChar(255)          NOT NULL,
			[Description]  NVarChar(255)              NULL,

			CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Categories]
(
	[CategoryName],
	[Description]
)
SELECT 'Name 1','Desc 1' UNION ALL
SELECT 'Name 2','Desc 2'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Products') IS NOT NULL)
	DROP TABLE [Products]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Products') IS NULL)
	EXECUTE('
		CREATE TABLE [Products]
		(
			[ProductID]       Int           IDENTITY NOT NULL,
			[ProductName]     NVarChar(255)          NOT NULL,
			[CategoryID]      Int                        NULL,
			[QuantityPerUnit] NVarChar(255)              NULL,

			CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
SELECT 'Prod 1',1,'q 1' UNION ALL
SELECT 'Prod 2',1,'q 2' UNION ALL
SELECT 'Prod 3',3,'q 3' UNION ALL
SELECT 'Prod 4',3,'q 4' UNION ALL
SELECT 'Prod 5',1,'q 5' UNION ALL
SELECT 'Prod 6',1,'q 6'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[CategoryID],
	[d].[ProductID],
	[d].[ProductName],
	[d].[CategoryID],
	[d].[QuantityPerUnit]
FROM
	[Categories] [m_1]
		INNER JOIN [Products] [d] ON [m_1].[CategoryID] = [d].[CategoryID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Products') IS NOT NULL)
	DROP TABLE [Products]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Categories') IS NOT NULL)
	DROP TABLE [Categories]

