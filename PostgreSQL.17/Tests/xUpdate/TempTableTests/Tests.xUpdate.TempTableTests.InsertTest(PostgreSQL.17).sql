-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Table2"
(
	"ID"
)
SELECT
	t."ID"
FROM
	"Table1" t

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Date"
FROM
	"Table2" t1

