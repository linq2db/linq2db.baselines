-- Oracle.11.Managed Oracle11

SELECT
	p."Id",
	p."Text"
FROM
	"Issue2816Table" p
WHERE
	p."Text" IS NULL OR LTRIM(p."Text", '	
                 　') IS NULL

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Text"
FROM
	"Issue2816Table" t1

