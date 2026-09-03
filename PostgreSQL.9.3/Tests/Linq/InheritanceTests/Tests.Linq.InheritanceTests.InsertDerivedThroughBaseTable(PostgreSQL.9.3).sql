-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child1Field"
)
VALUES
(
	1,
	1,
	11
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Code",
	t1."Child1Field"
FROM
	"InheritanceFilter" t1
WHERE
	t1."Code" IN (12, 11, 1)
LIMIT 2

