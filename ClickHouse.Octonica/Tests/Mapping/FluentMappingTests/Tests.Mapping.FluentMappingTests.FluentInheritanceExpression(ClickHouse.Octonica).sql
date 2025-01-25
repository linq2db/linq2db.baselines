BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DescendantEntity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DescendantEntity
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DescendantEntity
(
	Id
)
VALUES
(1),
(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Id
FROM
	DescendantEntity e
WHERE
	e.Id = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Id
FROM
	DescendantEntity e
WHERE
	e.Id = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DescendantEntity

