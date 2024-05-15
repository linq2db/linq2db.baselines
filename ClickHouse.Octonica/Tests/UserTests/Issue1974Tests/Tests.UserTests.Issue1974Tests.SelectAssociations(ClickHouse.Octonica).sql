BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Person1974

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Person1974
(
	ID   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Person1974
(
	ID,
	Name
)
VALUES
(1,'Person1'),
(2,'Person2')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Article

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Article
(
	ID       Nullable(String),
	PersonId Int32,
	Price    Float64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Article
(
	ID,
	PersonId,
	Price
)
VALUES
('Article',2,toFloat64(0))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Name,
	a_Bought.PersonId,
	a_Bought.ID,
	a_Bought.Price,
	a_BoughtQuery.PersonId,
	a_BoughtQuery.ID,
	a_BoughtQuery.Price
FROM
	Person1974 t1
		LEFT JOIN Article a_Bought ON t1.ID = a_Bought.PersonId
		LEFT JOIN Article a_BoughtQuery ON a_BoughtQuery.PersonId = t1.ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Article

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Person1974

