BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Categories]', N'U') IS NOT NULL)
	DROP TABLE [Categories]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Categories]', N'U') IS NULL)
	CREATE TABLE [Categories]
	(
		[CategoryID]   Int             NOT NULL IDENTITY,
		[CategoryName] NVarChar(4000)  NOT NULL,
		[Description]  NVarChar(4000)      NULL,

		CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Categories]
(
	[CategoryName],
	[Description]
)
VALUES
(N'Name 1',N'Desc 1'),
(N'Name 2',N'Desc 2')

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Products]', N'U') IS NOT NULL)
	DROP TABLE [Products]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Products]', N'U') IS NULL)
	CREATE TABLE [Products]
	(
		[ProductID]       Int             NOT NULL IDENTITY,
		[ProductName]     NVarChar(4000)  NOT NULL,
		[CategoryID]      Int                 NULL,
		[QuantityPerUnit] NVarChar(4000)      NULL,

		CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductID])
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(N'Prod 1',1,N'q 1'),
(N'Prod 2',1,N'q 2'),
(N'Prod 3',3,N'q 3'),
(N'Prod 4',3,N'q 4'),
(N'Prod 5',1,N'q 5'),
(N'Prod 6',1,N'q 6')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Products]', N'U') IS NOT NULL)
	DROP TABLE [Products]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Categories]', N'U') IS NOT NULL)
	DROP TABLE [Categories]

