BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS T1

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS T1
(
	id  Int32,
	id2 Int32,
	id3 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO T1
(
	id,
	id2,
	id3
)
VALUES
(toInt32(1),toInt32(2),toInt32(0)),
(toInt32(2),toInt32(2),toInt32(0)),
(toInt32(2),toInt32(85),toInt32(0))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS T2

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS T2
(
	id  Int32,
	id2 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO T2
(
	id,
	id2
)
VALUES
(toInt32(1),toInt32(2)),
(toInt32(2),toInt32(2)),
(toInt32(2),toInt32(85))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x_1.id
FROM
	T1 x_1
		LEFT JOIN (
			SELECT
				x.id as order_1
			FROM
				T2 x
			WHERE
				x.id2 = toInt32(2)
		) t3 ON x_1.id = t3.order_1
WHERE
	x_1.id2 = toInt32(2)
GROUP BY
	x_1.id
ORDER BY
	x_1.id
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x_1.id,
	x_1.id2,
	x_1.id3,
	t3.order_1,
	t3.id2
FROM
	T1 x_1
		LEFT JOIN (
			SELECT
				x.id as order_1,
				x.id2 as id2
			FROM
				T2 x
			WHERE
				x.id2 = toInt32(2)
		) t3 ON x_1.id = t3.order_1
WHERE
	x_1.id = toInt32(1) AND x_1.id2 = toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS T2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS T1

