BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue2434Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue2434Table
(
	Id        Int32,
	FirstName Nullable(String),
	LastName  Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.FirstName,
	t1.LastName,
	concat(t1.FirstName, ' ', t1.LastName)
FROM
	Issue2434Table t1
ORDER BY
	concat(t1.FirstName, ' ', t1.LastName)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue2434Table

