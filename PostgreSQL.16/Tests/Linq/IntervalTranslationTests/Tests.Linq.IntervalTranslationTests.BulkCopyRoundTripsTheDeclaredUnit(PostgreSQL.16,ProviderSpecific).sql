INSERT BULK "DurationRow"(Id, InSeconds, InTicks, Undeclared, UndeclaredSeconds)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
LIMIT 2

