BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DescendantEntity

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS DescendantEntity
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DescendantEntity
(
	Id
)
VALUES
(1),
(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id
FROM
	DescendantEntity e
WHERE
	e.Id + 100 = 101

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id
FROM
	DescendantEntity e
WHERE
	e.Id + 1000 = 1001

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DescendantEntity

