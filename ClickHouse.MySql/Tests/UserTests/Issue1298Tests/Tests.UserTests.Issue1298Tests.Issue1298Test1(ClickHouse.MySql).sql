﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS mega_composites

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS mega_composites
(
	ref1         Nullable(Int64),
	`y1.q1.ref1` Nullable(Int64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS qwerty

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS qwerty
(
	Id     Int64,
	asdfgh Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO qwerty
(
	Id,
	asdfgh
)
VALUES
(
	toInt64(1),
	'res1'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO qwerty
(
	Id,
	asdfgh
)
VALUES
(
	toInt64(100500),
	'res100500'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO mega_composites
(
	ref1,
	`y1.q1.ref1`
)
VALUES
(
	toInt64(100500),
	toInt64(100500)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO mega_composites
(
	ref1,
	`y1.q1.ref1`
)
VALUES
(
	toInt64(1),
	toInt64(100500)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO mega_composites
(
	ref1,
	`y1.q1.ref1`
)
VALUES
(
	toInt64(100500),
	toInt64(1)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.`y1.q1.ref1`,
	t1.face_y1_q1_ref1
FROM
	mega_composites x
		LEFT JOIN (
			SELECT
				q.asdfgh as face_y1_q1_ref1,
				ROW_NUMBER() OVER (PARTITION BY q.Id ORDER BY q.Id) as rn,
				q.Id as Id
			FROM
				qwerty q
		) t1 ON t1.Id = x.`y1.q1.ref1` AND t1.rn <= 1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS qwerty

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS mega_composites

