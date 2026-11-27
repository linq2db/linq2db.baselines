-- Oracle.11.Managed Oracle11
SELECT
	p."Id",
	p."Text"
FROM
	"WhiteSpaceTextRow" p
WHERE
	p."Text" IS NULL OR LTRIM(p."Text", '	
                  　') IS NULL

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Text"
FROM
	"WhiteSpaceTextRow" t1

