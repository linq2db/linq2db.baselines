-- PostgreSQL.11 PostgreSQL
SELECT
	p."Id",
	p."Text"
FROM
	"WhiteSpaceTextRow" p
WHERE
	p."Text" IS NULL OR LTRIM(p."Text", '	
                  　') = ''

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Text"
FROM
	"WhiteSpaceTextRow" t1

