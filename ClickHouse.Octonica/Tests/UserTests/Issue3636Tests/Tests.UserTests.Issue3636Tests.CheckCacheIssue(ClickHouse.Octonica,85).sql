BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS T1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS T1
(
	id  Int32,
	id2 Int32,
	id3 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO T1
(
	id,
	id2,
	id3
)
VALUES
(1,2,0),
(2,2,0),
(2,85,0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS T2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS T2
(
	id  Int32,
	id2 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO T2
(
	id,
	id2
)
VALUES
(1,2),
(2,2),
(2,85)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.ID,
	d.id,
	d.id2,
	d.id3,
	order_2.id,
	order_2.id2
FROM
	(
		SELECT
			x.id as ID
		FROM
			T1 x
				LEFT JOIN T2 order_1 ON x.id = order_1.id AND order_1.id2 = 85
		WHERE
			x.id2 = 85
		GROUP BY
			x.id
		ORDER BY
			x.id
		LIMIT 1
	) m_1
		INNER JOIN T1 d ON m_1.ID = d.id
		LEFT JOIN T2 order_2 ON d.id = order_2.id AND order_2.id2 = 85
WHERE
	d.id2 = 85

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.id
FROM
	T1 x
		LEFT JOIN T2 order_1 ON x.id = order_1.id AND order_1.id2 = 85
WHERE
	x.id2 = 85
GROUP BY
	x.id
ORDER BY
	x.id
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS T2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS T1

