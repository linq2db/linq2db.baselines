﻿BeforeExecute
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
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Position

