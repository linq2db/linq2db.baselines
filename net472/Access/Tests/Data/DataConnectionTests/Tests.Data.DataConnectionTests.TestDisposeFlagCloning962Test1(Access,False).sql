﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [Categories]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Categories]
(
	[CategoryID]   Int            NOT NULL IDENTITY,
	[CategoryName] NVarChar(255)  NOT NULL,
	[Description]  NVarChar(255)      NULL,

	CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @CategoryName VarWChar(6) -- String
SET     @CategoryName = 'Name 1'
DECLARE @Description VarWChar(6) -- String
SET     @Description = 'Desc 1'

INSERT INTO [Categories]
(
	[CategoryName],
	[Description]
)
VALUES
(
	@CategoryName,
	@Description
)

BeforeExecute
-- Access AccessOleDb
DECLARE @CategoryName VarWChar(6) -- String
SET     @CategoryName = 'Name 2'
DECLARE @Description VarWChar(6) -- String
SET     @Description = 'Desc 2'

INSERT INTO [Categories]
(
	[CategoryName],
	[Description]
)
VALUES
(
	@CategoryName,
	@Description
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Products]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Products]
(
	[ProductID]       Int            NOT NULL IDENTITY,
	[ProductName]     NVarChar(255)  NOT NULL,
	[CategoryID]      Int                NULL,
	[QuantityPerUnit] NVarChar(255)      NULL,

	CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ProductName VarWChar(6) -- String
SET     @ProductName = 'Prod 1'
DECLARE @CategoryID Integer -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit VarWChar(3) -- String
SET     @QuantityPerUnit = 'q 1'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ProductName VarWChar(6) -- String
SET     @ProductName = 'Prod 2'
DECLARE @CategoryID Integer -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit VarWChar(3) -- String
SET     @QuantityPerUnit = 'q 2'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ProductName VarWChar(6) -- String
SET     @ProductName = 'Prod 3'
DECLARE @CategoryID Integer -- Int32
SET     @CategoryID = 3
DECLARE @QuantityPerUnit VarWChar(3) -- String
SET     @QuantityPerUnit = 'q 3'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ProductName VarWChar(6) -- String
SET     @ProductName = 'Prod 4'
DECLARE @CategoryID Integer -- Int32
SET     @CategoryID = 3
DECLARE @QuantityPerUnit VarWChar(3) -- String
SET     @QuantityPerUnit = 'q 4'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ProductName VarWChar(6) -- String
SET     @ProductName = 'Prod 5'
DECLARE @CategoryID Integer -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit VarWChar(3) -- String
SET     @QuantityPerUnit = 'q 5'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ProductName VarWChar(6) -- String
SET     @ProductName = 'Prod 6'
DECLARE @CategoryID Integer -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit VarWChar(3) -- String
SET     @QuantityPerUnit = 'q 6'

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Products]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Categories]

