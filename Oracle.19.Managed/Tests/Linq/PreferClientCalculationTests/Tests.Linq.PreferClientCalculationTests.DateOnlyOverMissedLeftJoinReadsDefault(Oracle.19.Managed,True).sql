-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	j."Day",
	e."Day"
FROM
	"MissedDayEntity" e
		LEFT JOIN "MissedDayEntity" j ON j."Id" = e."Id" + 1000

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Day"
FROM
	"MissedDayEntity" t1

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(YEAR FROM Coalesce(j."Day", DATE '0001-01-01'))
FROM
	"MissedDayEntity" e
		LEFT JOIN "MissedDayEntity" j ON j."Id" = e."Id" + 1000

