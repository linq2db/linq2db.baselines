-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "NativeIdentity" ("Id", "Field") VALUES (4,11)
	INTO "NativeIdentity" ("Id", "Field") VALUES (8,12)
SELECT * FROM dual

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field"
FROM
	"NativeIdentity" t1
ORDER BY
	t1."Field"

