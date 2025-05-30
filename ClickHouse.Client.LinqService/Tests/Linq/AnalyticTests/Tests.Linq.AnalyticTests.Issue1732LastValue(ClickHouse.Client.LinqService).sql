﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Position

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Position
(
	Group Int32,
	Order Int32,
	Id    Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	p_1.Id,
	LAST_VALUE(p_1.Id) RESPECT NULLS OVER(ORDER BY p_1.Order_1)
FROM
	(
		SELECT
			p.Id as Id,
			p.Order as Order_1
		FROM
			Position p
		WHERE
			p.Group = 7
	) p_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Position

