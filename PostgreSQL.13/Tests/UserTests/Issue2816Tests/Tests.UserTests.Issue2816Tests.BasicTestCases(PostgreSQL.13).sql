-- PostgreSQL.13 PostgreSQL12

SELECT
	p."Id",
	p."Text"
FROM
	"Issue2816Table" p
WHERE
	p."Text" IS NULL OR LTRIM(p."Text", '	
                  　') = ''

-- PostgreSQL.13 PostgreSQL12

SELECT
	t1."Id",
	t1."Text"
FROM
	"Issue2816Table" t1

