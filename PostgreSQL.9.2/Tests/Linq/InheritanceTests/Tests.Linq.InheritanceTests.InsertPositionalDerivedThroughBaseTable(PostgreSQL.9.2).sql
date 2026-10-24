-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "InheritanceFilterPositional"
(
	"Id",
	"Code",
	"Value"
)
VALUES
(
	1,
	1,
	42
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Code",
	t1."Value"
FROM
	"InheritanceFilterPositional" t1
LIMIT 2

