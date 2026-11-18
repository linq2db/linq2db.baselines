-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @bound Date
SET     @bound = TIMESTAMP '2000-01-01 00:00:00.000000'

SELECT
	e."Id",
	CASE
		WHEN Coalesce(j."Day", DATE '0001-01-01') > :bound THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j."Day", DATE '0001-01-01') < :bound THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j."Day", DATE '0001-01-01') > e."Day" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j."Day", DATE '0001-01-01') <= e."Day" THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedDayEntity" e
		LEFT JOIN "MissedDayEntity" j ON j."Id" = e."Id" + 1000

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Day"
FROM
	"MissedDayEntity" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(YEAR FROM Coalesce(j."Day", DATE '0001-01-01'))
FROM
	"MissedDayEntity" e
		LEFT JOIN "MissedDayEntity" j ON j."Id" = e."Id" + 1000

