-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	CASE
		WHEN Coalesce(j."Moment", TIMESTAMP '0001-01-01 00:00:00.000000 +00:00') > e."Moment"
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j."Moment", TIMESTAMP '0001-01-01 00:00:00.000000 +00:00') <= e."Moment"
			THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedMomentEntity" e
		LEFT JOIN "MissedMomentEntity" j ON j."Id" = e."Id" + 1000

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Moment"
FROM
	"MissedMomentEntity" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(YEAR FROM Coalesce(j."Moment", TIMESTAMP '0001-01-01 00:00:00.000000 +00:00'))
FROM
	"MissedMomentEntity" e
		LEFT JOIN "MissedMomentEntity" j ON j."Id" = e."Id" + 1000

