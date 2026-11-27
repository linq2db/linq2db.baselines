-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ID"
FROM
	"ClientEvaluatedRecord" t1
WHERE
	t1."ID" IN (4, 5, 6)
LIMIT 2

