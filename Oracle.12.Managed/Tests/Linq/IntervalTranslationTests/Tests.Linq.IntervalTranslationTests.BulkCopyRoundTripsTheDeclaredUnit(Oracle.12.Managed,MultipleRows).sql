-- Oracle.12.Managed Oracle.Managed Oracle12
INSERT ALL
	INTO "DurationRow" ("Id", "InSeconds", "InTicks", "Undeclared", "UndeclaredSeconds") VALUES (1,4567,45670000000,45670000000,4567)
SELECT * FROM dual

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
FETCH NEXT 2 ROWS ONLY

