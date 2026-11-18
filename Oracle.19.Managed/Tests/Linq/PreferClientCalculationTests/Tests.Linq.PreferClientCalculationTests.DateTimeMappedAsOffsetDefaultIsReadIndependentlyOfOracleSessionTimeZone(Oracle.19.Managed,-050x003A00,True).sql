-- Oracle.19.Managed Oracle.Managed Oracle12
ALTER SESSION SET TIME_ZONE = '-05:00'

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(YEAR FROM Coalesce(j."Moment", TIMESTAMP '0001-01-01 00:00:00.000000 +00:00')),
	EXTRACT(HOUR FROM Coalesce(j."Moment", TIMESTAMP '0001-01-01 00:00:00.000000 +00:00'))
FROM
	"MissedMomentEntity" e
		LEFT JOIN "MissedMomentEntity" j ON j."Id" = e."Id" + 1000

-- Oracle.19.Managed Oracle.Managed Oracle12
ALTER SESSION SET TIME_ZONE = LOCAL

