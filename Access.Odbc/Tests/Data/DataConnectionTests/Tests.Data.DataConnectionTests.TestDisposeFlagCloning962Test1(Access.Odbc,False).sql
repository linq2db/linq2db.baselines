BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Categories]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Categories]
(
	[CategoryID]   Int            NOT NULL IDENTITY,
	[CategoryName] NVarChar(255)  NOT NULL,
	[Description]  NVarChar(255)      NULL,

	CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @CategoryName NVarChar(6) -- String
SET     @CategoryName = 'Name 1'
DECLARE @Description NVarChar(6) -- String
SET     @Description = 'Desc 1'

INSERT INTO [Categories]
(
	[CategoryName],
	[Description]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @CategoryName NVarChar(6) -- String
SET     @CategoryName = 'Name 2'
DECLARE @Description NVarChar(6) -- String
SET     @Description = 'Desc 2'

INSERT INTO [Categories]
(
	[CategoryName],
	[Description]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Products]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Products]
(
	[ProductID]       Int            NOT NULL IDENTITY,
	[ProductName]     NVarChar(255)  NOT NULL,
	[CategoryID]      Int                NULL,
	[QuantityPerUnit] NVarChar(255)      NULL,

	CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductID])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ProductName NVarChar(6) -- String
SET     @ProductName = 'Prod 1'
DECLARE @CategoryID Int -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit NVarChar(3) -- String
SET     @QuantityPerUnit = 'q 1'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ProductName NVarChar(6) -- String
SET     @ProductName = 'Prod 2'
DECLARE @CategoryID Int -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit NVarChar(3) -- String
SET     @QuantityPerUnit = 'q 2'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ProductName NVarChar(6) -- String
SET     @ProductName = 'Prod 3'
DECLARE @CategoryID Int -- Int32
SET     @CategoryID = 3
DECLARE @QuantityPerUnit NVarChar(3) -- String
SET     @QuantityPerUnit = 'q 3'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ProductName NVarChar(6) -- String
SET     @ProductName = 'Prod 4'
DECLARE @CategoryID Int -- Int32
SET     @CategoryID = 3
DECLARE @QuantityPerUnit NVarChar(3) -- String
SET     @QuantityPerUnit = 'q 4'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ProductName NVarChar(6) -- String
SET     @ProductName = 'Prod 5'
DECLARE @CategoryID Int -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit NVarChar(3) -- String
SET     @QuantityPerUnit = 'q 5'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ProductName NVarChar(6) -- String
SET     @ProductName = 'Prod 6'
DECLARE @CategoryID Int -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit NVarChar(3) -- String
SET     @QuantityPerUnit = 'q 6'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[m_1].[CategoryID],
	[d].[ProductID],
	[d].[ProductName],
	[d].[CategoryID],
	[d].[QuantityPerUnit]
FROM
	[Categories] [m_1]
		INNER JOIN [Products] [d] ON ([m_1].[CategoryID] = [d].[CategoryID])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Products]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Categories]

