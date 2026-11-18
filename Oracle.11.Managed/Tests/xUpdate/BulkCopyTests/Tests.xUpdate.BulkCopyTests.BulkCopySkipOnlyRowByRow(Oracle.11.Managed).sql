-- Oracle.11.Managed Oracle11
INSERT INTO "SkipOnlyField" VALUES (DEFAULT)

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id"
FROM
	"SkipOnlyField" t1
WHERE
	ROWNUM <= 2

