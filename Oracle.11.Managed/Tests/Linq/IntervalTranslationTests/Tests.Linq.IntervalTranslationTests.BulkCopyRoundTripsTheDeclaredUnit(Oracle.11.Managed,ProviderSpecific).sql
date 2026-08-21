-- Oracle.11.Managed Oracle11
INSERT ALL
	INTO "DurationRow" ("Id", "InSeconds", "InTicks", "Undeclared", "UndeclaredSeconds") VALUES (1,4567,45670000000,45670000000,4567)
SELECT * FROM dual

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
WHERE
	ROWNUM <= 2

