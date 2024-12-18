BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Categories

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Categories
(
	CategoryID   SERIAL         NOT NULL,
	CategoryName NVarChar(255)  NOT NULL,
	Description  NVarChar(255)      NULL,

	PRIMARY KEY (CategoryID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @CategoryName VarChar(6) -- String
SET     @CategoryName = 'Name 1'
DECLARE @Description VarChar(6) -- String
SET     @Description = 'Desc 1'

INSERT INTO Categories
(
	CategoryName,
	Description
)
VALUES
(
	@CategoryName,
	@Description
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @CategoryName VarChar(6) -- String
SET     @CategoryName = 'Name 2'
DECLARE @Description VarChar(6) -- String
SET     @Description = 'Desc 2'

INSERT INTO Categories
(
	CategoryName,
	Description
)
VALUES
(
	@CategoryName,
	@Description
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Products

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Products
(
	ProductID       SERIAL         NOT NULL,
	ProductName     NVarChar(255)  NOT NULL,
	CategoryID      Int                NULL,
	QuantityPerUnit NVarChar(255)      NULL,

	PRIMARY KEY (ProductID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProductName VarChar(6) -- String
SET     @ProductName = 'Prod 1'
DECLARE @CategoryID Integer(4) -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit VarChar(3) -- String
SET     @QuantityPerUnit = 'q 1'

INSERT INTO Products
(
	ProductName,
	CategoryID,
	QuantityPerUnit
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProductName VarChar(6) -- String
SET     @ProductName = 'Prod 2'
DECLARE @CategoryID Integer(4) -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit VarChar(3) -- String
SET     @QuantityPerUnit = 'q 2'

INSERT INTO Products
(
	ProductName,
	CategoryID,
	QuantityPerUnit
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProductName VarChar(6) -- String
SET     @ProductName = 'Prod 3'
DECLARE @CategoryID Integer(4) -- Int32
SET     @CategoryID = 3
DECLARE @QuantityPerUnit VarChar(3) -- String
SET     @QuantityPerUnit = 'q 3'

INSERT INTO Products
(
	ProductName,
	CategoryID,
	QuantityPerUnit
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProductName VarChar(6) -- String
SET     @ProductName = 'Prod 4'
DECLARE @CategoryID Integer(4) -- Int32
SET     @CategoryID = 3
DECLARE @QuantityPerUnit VarChar(3) -- String
SET     @QuantityPerUnit = 'q 4'

INSERT INTO Products
(
	ProductName,
	CategoryID,
	QuantityPerUnit
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProductName VarChar(6) -- String
SET     @ProductName = 'Prod 5'
DECLARE @CategoryID Integer(4) -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit VarChar(3) -- String
SET     @QuantityPerUnit = 'q 5'

INSERT INTO Products
(
	ProductName,
	CategoryID,
	QuantityPerUnit
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProductName VarChar(6) -- String
SET     @ProductName = 'Prod 6'
DECLARE @CategoryID Integer(4) -- Int32
SET     @CategoryID = 1
DECLARE @QuantityPerUnit VarChar(3) -- String
SET     @QuantityPerUnit = 'q 6'

INSERT INTO Products
(
	ProductName,
	CategoryID,
	QuantityPerUnit
)
VALUES
(
	@ProductName,
	@CategoryID,
	@QuantityPerUnit
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.CategoryID,
	d.ProductID,
	d.ProductName,
	d.CategoryID,
	d.QuantityPerUnit
FROM
	Categories m_1
		INNER JOIN Products d ON m_1.CategoryID = d.CategoryID AND d.CategoryID IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.CategoryID,
	t1.CategoryName,
	t1.Description
FROM
	Categories t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Products

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Categories

