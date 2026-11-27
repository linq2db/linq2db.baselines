-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	p."Id",
	p."Text"
FROM
	"WhiteSpaceTextRow" p
WHERE
	p."Text" IS NULL OR LTRIM(p."Text", '	
                  　') = ''

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Text"
FROM
	"WhiteSpaceTextRow" t1

