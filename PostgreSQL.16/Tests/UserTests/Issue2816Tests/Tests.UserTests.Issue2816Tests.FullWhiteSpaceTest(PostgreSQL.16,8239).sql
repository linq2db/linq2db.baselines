-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	p."Id",
	p."Text"
FROM
	"Issue2816Table" p
WHERE
	NOT (p."Text" IS NULL OR LTRIM(p."Text", '	
                  　') = '')

