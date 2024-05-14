BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DescendantEntity

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DescendantEntity
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO DescendantEntity
(
	Id
)
VALUES
(1),
(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.Id
FROM
	DescendantEntity e
WHERE
	e.Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.Id
FROM
	DescendantEntity e
WHERE
	e.Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DescendantEntity

