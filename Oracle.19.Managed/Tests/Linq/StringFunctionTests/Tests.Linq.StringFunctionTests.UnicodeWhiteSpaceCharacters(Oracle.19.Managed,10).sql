-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."Id",
	p."Text"
FROM
	"WhiteSpaceTextRow" p
WHERE
	NOT (p."Text" IS NULL OR LTRIM(p."Text", '	
                  　') IS NULL)

