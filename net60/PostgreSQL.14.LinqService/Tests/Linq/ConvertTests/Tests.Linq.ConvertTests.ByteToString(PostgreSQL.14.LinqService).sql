BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p.c1
FROM
	(
		SELECT
			Cast(Cast(t."ID" as SmallInt) as text) as c1
		FROM
			"LinqDataTypes" t
	) p
WHERE
	Length(p.c1) > 0

