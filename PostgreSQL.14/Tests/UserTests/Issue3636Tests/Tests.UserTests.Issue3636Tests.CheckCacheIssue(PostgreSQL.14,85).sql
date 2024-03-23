BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "T1"
(
	id  Int NOT NULL,
	id2 Int NOT NULL,
	id3 Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "T1"
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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "T2"
(
	id  Int NOT NULL,
	id2 Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "T2"
(
	id,
	id2
)
VALUES
(1,2),
(2,2),
(2,85)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @myId Integer -- Int32
SET     @myId = 85

SELECT
	m_1."ID",
	d.id,
	d.id2,
	d.id3,
	order_2.id,
	order_2.id2
FROM
	(
		SELECT
			x.id as "ID"
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
		INNER JOIN "T1" d ON m_1."ID" = d.id
		LEFT JOIN "T2" order_2 ON d.id = order_2.id AND order_2.id2 = :myId
WHERE
	d.id2 = :myId

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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
BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T1"

