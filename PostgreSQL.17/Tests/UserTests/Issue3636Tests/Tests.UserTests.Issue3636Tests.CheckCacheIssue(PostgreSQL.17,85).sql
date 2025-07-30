BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @myId Integer -- Int32
SET     @myId = 85

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
			x.id as "Key_1"
		FROM
			"T1" x
				LEFT JOIN "T2" order_1 ON x.id = order_1.id AND order_1.id2 = :myId
		WHERE
			x.id2 = :myId
		GROUP BY
			x.id
		ORDER BY
			x.id
		LIMIT 1
	) m_1
		INNER JOIN "T1" d ON m_1."Key_1" = d.id
		LEFT JOIN "T2" order_2 ON d.id = order_2.id AND order_2.id2 = :myId
WHERE
	d.id2 = :myId

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @myId Integer -- Int32
SET     @myId = 85

SELECT
	x.id
FROM
	"T1" x
		LEFT JOIN "T2" order_1 ON x.id = order_1.id AND order_1.id2 = :myId
WHERE
	x.id2 = :myId
GROUP BY
	x.id
ORDER BY
	x.id
LIMIT 1

BeforeExecute
DisposeTransaction
