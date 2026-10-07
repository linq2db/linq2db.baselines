-- PostgreSQL.9.2 PostgreSQL
SELECT
	e."Id",
	CASE
		WHEN Coalesce(j."Moment", '0001-01-01 00:00:00.000000+00:00'::timestamptz) > e."Moment"
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j."Moment", '0001-01-01 00:00:00.000000+00:00'::timestamptz) <= e."Moment"
			THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedMomentEntity" e
		LEFT JOIN "MissedMomentEntity" j ON j."Id" = e."Id" + 1000

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Moment"
FROM
	"MissedMomentEntity" t1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(year From Coalesce(j."Moment", '0001-01-01 00:00:00.000000+00:00'::timestamptz)))::Int
FROM
	"MissedMomentEntity" e
		LEFT JOIN "MissedMomentEntity" j ON j."Id" = e."Id" + 1000

