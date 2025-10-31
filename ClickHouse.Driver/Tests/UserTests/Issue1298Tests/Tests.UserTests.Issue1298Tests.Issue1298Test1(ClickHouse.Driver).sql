-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

