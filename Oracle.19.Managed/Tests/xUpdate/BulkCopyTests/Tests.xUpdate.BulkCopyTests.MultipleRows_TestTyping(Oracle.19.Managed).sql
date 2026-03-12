-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "MultipleRowsTable" ("Id", "DecimalValue1", "DecimalValue2") VALUES (1,NULL,1)
	INTO "MultipleRowsTable" ("Id", "DecimalValue1", "DecimalValue2") VALUES (2,1.5,-2.6)
SELECT * FROM dual

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."DecimalValue1",
	t1."DecimalValue2"
FROM
	"MultipleRowsTable" t1
ORDER BY
	t1."Id"

