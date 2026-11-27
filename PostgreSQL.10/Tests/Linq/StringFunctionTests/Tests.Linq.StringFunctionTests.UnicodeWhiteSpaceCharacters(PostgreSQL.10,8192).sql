-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."Id",
	p."Text"
FROM
	"WhiteSpaceTextRow" p
WHERE
	NOT (p."Text" IS NULL OR LTRIM(p."Text", '	
                  　') = '')

