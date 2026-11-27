-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	t1."ID"
FROM
	"ClientEvaluatedRecord" t1
WHERE
	t1."ID" = :p
LIMIT 2

