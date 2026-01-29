-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @myId Integer -- Int32
SET     @myId = 2

SELECT
	m_1."Key_1",
	d.id,
	d.id2,
	d.id3,
	order_2.id,
	order_2.id2
FROM
	(
		SELECT
			t3."Key_1"
		FROM
			(
				SELECT DISTINCT
					g_1.id as "Key_1"
				FROM
					"T1" g_1
						LEFT JOIN "T2" order_1 ON g_1.id = order_1.id AND order_1.id2 = :myId
				WHERE
					g_1.id2 = :myId
			) t3
		ORDER BY
			t3."Key_1"
		LIMIT 1
	) m_1
		INNER JOIN "T1" d ON m_1."Key_1" = d.id
		LEFT JOIN "T2" order_2 ON d.id = order_2.id AND order_2.id2 = :myId
WHERE
	d.id2 = :myId

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @myId Integer -- Int32
SET     @myId = 2

SELECT
	t3."Key_1"
FROM
	(
		SELECT DISTINCT
			g_1.id as "Key_1"
		FROM
			"T1" g_1
				LEFT JOIN "T2" order_1 ON g_1.id = order_1.id AND order_1.id2 = :myId
		WHERE
			g_1.id2 = :myId
	) t3
ORDER BY
	t3."Key_1"
LIMIT 1

