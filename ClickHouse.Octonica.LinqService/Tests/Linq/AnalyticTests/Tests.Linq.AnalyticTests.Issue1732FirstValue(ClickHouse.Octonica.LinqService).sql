BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Position

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Position
(
	Group Int32,
	Order Int32,
	Id    Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Position
(
	Group,
	Order,
	Id
)
VALUES
(
	7,
	10,
	5
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Position
(
	Group,
	Order,
	Id
)
VALUES
(
	7,
	20,
	6
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Position
(
	Group,
	Order,
	Id
)
VALUES
(
	7,
	30,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Position
(
	Group,
	Order,
	Id
)
VALUES
(
	7,
	40,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Id,
	FIRST_VALUE(p.Id) RESPECT NULLS OVER(ORDER BY p.Order DESC)
FROM
	Position p
WHERE
	p.Group = 7

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Position

