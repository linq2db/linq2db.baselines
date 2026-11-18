-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "Table2"
(
	"ID"
)
SELECT
	t."ID"
FROM
	"Table1" t

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ID",
	t1."Date"
FROM
	"Table2" t1

