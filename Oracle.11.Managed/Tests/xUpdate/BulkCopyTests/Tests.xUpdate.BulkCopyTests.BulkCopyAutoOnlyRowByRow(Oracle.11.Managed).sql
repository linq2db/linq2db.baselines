-- Oracle.11.Managed Oracle11
INSERT INTO "IdentityOnlyField" VALUES (DEFAULT)

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id"
FROM
	"IdentityOnlyField" t1
WHERE
	ROWNUM <= 2

