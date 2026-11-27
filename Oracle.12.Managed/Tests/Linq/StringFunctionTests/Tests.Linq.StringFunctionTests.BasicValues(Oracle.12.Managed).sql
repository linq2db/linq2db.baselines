-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."Id",
	p."Text"
FROM
	"WhiteSpaceTextRow" p
WHERE
	p."Text" IS NULL OR LTRIM(p."Text", '	
                  　') IS NULL

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Text"
FROM
	"WhiteSpaceTextRow" t1

