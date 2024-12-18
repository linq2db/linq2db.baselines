BeforeExecute
-- SqlCe

DROP TABLE [Categories]

BeforeExecute
-- SqlCe

CREATE TABLE [Categories]
(
	[CategoryID]   Int            NOT NULL IDENTITY,
	[CategoryName] NVarChar(255)  NOT NULL,
	[Description]  NVarChar(255)      NULL,

	CONSTRAINT [PK_Categories] PRIMARY KEY ([CategoryID])
)

BeforeExecute
-- SqlCe

INSERT INTO [Categories]
(
	[CategoryName],
	[Description]
)
SELECT 'Name 1','Desc 1' UNION ALL
SELECT 'Name 2','Desc 2'

BeforeExecute
-- SqlCe

DROP TABLE [Products]

BeforeExecute
-- SqlCe

CREATE TABLE [Products]
(
	[ProductID]       Int            NOT NULL IDENTITY,
	[ProductName]     NVarChar(255)  NOT NULL,
	[CategoryID]      Int                NULL,
	[QuantityPerUnit] NVarChar(255)      NULL,

	CONSTRAINT [PK_Products] PRIMARY KEY ([ProductID])
)

BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT
	[m_1].[CategoryID],
	[d].[ProductID],
	[d].[ProductName],
	[d].[CategoryID] as [CategoryID_1],
	[d].[QuantityPerUnit]
FROM
	[Categories] [m_1]
		INNER JOIN [Products] [d] ON [m_1].[CategoryID] = [d].[CategoryID] AND [d].[CategoryID] IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Products]

BeforeExecute
-- SqlCe

DROP TABLE [Categories]

