-- Oracle.11.Managed Oracle11
SELECT
	p."Id",
	p."Text"
FROM
	"WhiteSpaceTextRow" p
WHERE
	NOT (p."Text" IS NULL OR LTRIM(p."Text", '	
                  　') IS NULL)

