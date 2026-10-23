-- Oracle.11.Managed Oracle11
ALTER SESSION SET TIME_ZONE = '+00:00'

-- Oracle.11.Managed Oracle11
SELECT
	EXTRACT(YEAR FROM Coalesce(j."Moment", TIMESTAMP '0001-01-01 00:00:00.000000 +00:00')),
	EXTRACT(HOUR FROM Coalesce(j."Moment", TIMESTAMP '0001-01-01 00:00:00.000000 +00:00'))
FROM
	"MissedMomentEntity" e
		LEFT JOIN "MissedMomentEntity" j ON j."Id" = e."Id" + 1000

-- Oracle.11.Managed Oracle11
ALTER SESSION SET TIME_ZONE = LOCAL

