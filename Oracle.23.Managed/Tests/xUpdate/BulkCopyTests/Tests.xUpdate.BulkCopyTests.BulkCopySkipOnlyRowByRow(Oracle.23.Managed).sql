-- Oracle.23.Managed Oracle.Managed Oracle12
INSERT INTO "SkipOnlyField" VALUES (DEFAULT)

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id"
FROM
	"SkipOnlyField" t1
FETCH NEXT 2 ROWS ONLY

