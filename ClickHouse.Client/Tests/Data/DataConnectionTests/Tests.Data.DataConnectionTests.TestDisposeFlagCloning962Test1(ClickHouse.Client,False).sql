BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Categories

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Categories
(
	CategoryID   Int32,
	CategoryName String,
	Description  Nullable(String),

	PRIMARY KEY (CategoryID)
)
ENGINE = MergeTree()
ORDER BY CategoryID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Categories
(
	CategoryName,
	Description
)
VALUES
('Name 1','Desc 1'),
('Name 2','Desc 2')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Products

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Products
(
	ProductID       Int32,
	ProductName     String,
	CategoryID      Nullable(Int32),
	QuantityPerUnit Nullable(String),

	PRIMARY KEY (ProductID)
)
ENGINE = MergeTree()
ORDER BY ProductID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Products
(
	ProductName,
	CategoryID,
	QuantityPerUnit
)
VALUES
('Prod 1',1,'q 1'),
('Prod 2',1,'q 2'),
('Prod 3',3,'q 3'),
('Prod 4',3,'q 4'),
('Prod 5',1,'q 5'),
('Prod 6',1,'q 6')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.CategoryID,
	d.ProductID,
	d.ProductName,
	d.CategoryID,
	d.QuantityPerUnit
FROM
	Categories m_1
		INNER JOIN Products d ON m_1.CategoryID = d.CategoryID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.CategoryID,
	t1.CategoryName,
	t1.Description
FROM
	Categories t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Products

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Categories

