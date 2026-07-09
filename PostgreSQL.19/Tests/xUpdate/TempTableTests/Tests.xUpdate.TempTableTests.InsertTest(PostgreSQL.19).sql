-- PostgreSQL.19 PostgreSQL13

INSERT INTO "Table2"
(
	"ID"
)
SELECT
	t."ID"
FROM
	"Table1" t

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."ID",
	t1."Date"
FROM
	"Table2" t1

