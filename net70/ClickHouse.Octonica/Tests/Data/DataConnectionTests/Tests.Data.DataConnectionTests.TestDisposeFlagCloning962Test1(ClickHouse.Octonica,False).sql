BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Categories

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO Categories
(
	CategoryName,
	Description
)
VALUES
('Name 1','Desc 1'),
('Name 2','Desc 2')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Products

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO Products
(
	ProductName,
	CategoryID,
	QuantityPerUnit
)
VALUES
('Prod 1',toInt32(1),'q 1'),
('Prod 2',toInt32(1),'q 2'),
('Prod 3',toInt32(3),'q 3'),
('Prod 4',toInt32(3),'q 4'),
('Prod 5',toInt32(1),'q 5'),
('Prod 6',toInt32(1),'q 6')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	lw_Category.CategoryID,
	detail.ProductID,
	detail.ProductName,
	detail.CategoryID,
	detail.QuantityPerUnit
FROM
	Categories lw_Category
		INNER JOIN Products detail ON lw_Category.CategoryID = detail.CategoryID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.CategoryID,
	t1.CategoryName,
	t1.Description
FROM
	Categories t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Products

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Categories

