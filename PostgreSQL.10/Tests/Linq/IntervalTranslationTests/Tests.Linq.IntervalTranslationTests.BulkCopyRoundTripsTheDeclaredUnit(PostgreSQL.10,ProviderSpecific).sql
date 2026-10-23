INSERT BULK "DurationRow"(Id, InSeconds, InTicks, Undeclared, UndeclaredSeconds)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
LIMIT 2

