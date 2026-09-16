-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	Coalesce(j."Value1", 0) + 1,
	CASE
		WHEN Coalesce(j."Value1", 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce(j."Value1", 0) - 1),
	CASE
		WHEN j."Date" IS NULL THEN 1
		ELSE EXTRACT(YEAR FROM j."Date")
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'n'
		WHEN j."Date" > TO_TIMESTAMP('2000-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN j."Date" IS NULL THEN 'y'
		WHEN j."Date" < TO_TIMESTAMP('2000-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
			THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value1",
	t1."Date"
FROM
	"MissedJoinEntity" t1

