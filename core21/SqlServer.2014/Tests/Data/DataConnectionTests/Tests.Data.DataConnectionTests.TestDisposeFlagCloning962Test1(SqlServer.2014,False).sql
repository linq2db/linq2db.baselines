﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Categories]', N'U') IS NOT NULL)
	DROP TABLE [Categories]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Categories]', N'U') IS NULL)
	CREATE TABLE [Categories]
	(
		[CategoryID]   Int             NOT NULL IDENTITY,
		[CategoryName] NVarChar(4000)  NOT NULL,
		[Description]  NVarChar(4000)      NULL,

		CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [Categories]
(
	[CategoryName],
	[Description]
)
VALUES
(N'Name 1',N'Desc 1'),
(N'Name 2',N'Desc 2')

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Products]', N'U') IS NOT NULL)
	DROP TABLE [Products]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012

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
BeginTransaction
BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[lw_Category].[CategoryID],
	[detail].[ProductID],
	[detail].[ProductName],
	[detail].[CategoryID],
	[detail].[QuantityPerUnit]
FROM
	[Categories] [lw_Category]
		INNER JOIN [Products] [detail] ON [lw_Category].[CategoryID] = [detail].[CategoryID]

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Products]', N'U') IS NOT NULL)
	DROP TABLE [Products]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Categories]', N'U') IS NOT NULL)
	DROP TABLE [Categories]

