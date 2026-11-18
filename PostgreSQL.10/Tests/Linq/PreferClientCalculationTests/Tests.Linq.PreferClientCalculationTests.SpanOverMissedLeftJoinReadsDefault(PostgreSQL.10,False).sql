-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @value Interval -- Object
SET     @value = 00:00:00

SELECT
	e."Id",
	CASE
		WHEN Coalesce(j."Span", :value) < e."Span" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j."Span", :value) = :value THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedSpanEntity" e
		LEFT JOIN "MissedSpanEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Span"
FROM
	"MissedSpanEntity" t1

