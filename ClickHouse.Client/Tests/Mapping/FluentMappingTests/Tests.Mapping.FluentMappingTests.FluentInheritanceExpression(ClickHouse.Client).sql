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
(toInt32(1)),
(toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id
FROM
	DescendantEntity e
WHERE
	e.Id = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id
FROM
	DescendantEntity e
WHERE
	e.Id = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DescendantEntity

