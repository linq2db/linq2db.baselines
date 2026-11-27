-- PostgreSQL.18 PostgreSQL12
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO "ClientEvaluatedRecord"
(
	"ID"
)
VALUES
(
	:ID
)

-- PostgreSQL.18 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	t1."ID"
FROM
	"ClientEvaluatedRecord" t1
WHERE
	t1."ID" = :p
LIMIT 2

-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 5

SELECT
	t1."ID"
FROM
	"ClientEvaluatedRecord" t1
WHERE
	t1."ID" = :Id
LIMIT 2

