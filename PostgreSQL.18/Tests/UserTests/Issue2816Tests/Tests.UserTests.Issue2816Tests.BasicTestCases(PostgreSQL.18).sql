-- PostgreSQL.18 PostgreSQL

SELECT
	p."Id",
	p."Text"
FROM
	"Issue2816Table" p
WHERE
	p."Text" IS NULL OR LTRIM(p."Text", '	
                 　') = ''

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Text"
FROM
	"Issue2816Table" t1

