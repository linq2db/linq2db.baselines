-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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
		SELECT DISTINCT
			x.id as "Key_1"
		FROM
			"GroupedLeftJoinPrimary" x
				LEFT JOIN "GroupedLeftJoinSecondary" order_1 ON x.id = order_1.id AND order_1.id2 = :myId
		WHERE
			x.id2 = :myId
		ORDER BY
			x.id
		LIMIT 1
	) m_1
		INNER JOIN "GroupedLeftJoinPrimary" d ON m_1."Key_1" = d.id
		LEFT JOIN "GroupedLeftJoinSecondary" order_2 ON d.id = order_2.id AND order_2.id2 = :myId
WHERE
	d.id2 = :myId

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @myId Integer -- Int32
SET     @myId = 85

SELECT DISTINCT
	x.id
FROM
	"GroupedLeftJoinPrimary" x
		LEFT JOIN "GroupedLeftJoinSecondary" order_1 ON x.id = order_1.id AND order_1.id2 = :myId
WHERE
	x.id2 = :myId
ORDER BY
	x.id
LIMIT 1

