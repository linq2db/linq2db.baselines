BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T1"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "T1"
(
	id  Int NOT NULL,
	id2 Int NOT NULL,
	id3 Int NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T2"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "T2"
(
	id  Int NOT NULL,
	id2 Int NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @myId Integer -- Int32
SET     @myId = 85
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x_1.id
FROM
	"T1" x_1
		LEFT JOIN (
			SELECT
				x.id as order_1
			FROM
				"T2" x
			WHERE
				x.id2 = :myId
		) t3 ON x_1.id = t3.order_1
WHERE
	x_1.id2 = :myId
GROUP BY
	x_1.id
ORDER BY
	x_1.id
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ID2 Integer -- Int32
SET     @ID2 = 85
DECLARE @ID Integer -- Int32
SET     @ID = 2

SELECT
	x_1.id,
	x_1.id2,
	x_1.id3,
	t3.order_1,
	t3.id2
FROM
	"T1" x_1
		LEFT JOIN (
			SELECT
				x.id as order_1,
				x.id2
			FROM
				"T2" x
			WHERE
				x.id2 = :ID2
		) t3 ON x_1.id = t3.order_1
WHERE
	x_1.id = :ID AND x_1.id2 = :ID2

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T2"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "T1"

