-- PostgreSQL.15 PostgreSQL12

INSERT INTO "Table2"
(
	"ID"
)
SELECT
	t."ID"
FROM
	"Table1" t

-- PostgreSQL.15 PostgreSQL12

SELECT
	t1."ID",
	t1."Date"
FROM
	"Table2" t1

