-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."Code",
	t1."Value"
FROM
	"InheritanceFilterPositional" t1
LIMIT 2

