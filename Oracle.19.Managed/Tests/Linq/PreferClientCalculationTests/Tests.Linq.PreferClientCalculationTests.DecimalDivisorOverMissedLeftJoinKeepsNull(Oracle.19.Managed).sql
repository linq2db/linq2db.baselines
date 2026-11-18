-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	e."Dec" / j."Dec"
FROM
	"MissedDivisorEntity" e
		LEFT JOIN "MissedDivisorEntity" j ON j."Id" = e."Id" + 1000

