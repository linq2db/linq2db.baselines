-- Oracle.11.Managed Oracle11
SELECT
	CASE
		WHEN r."Id" > 0 THEN r."OpenedOn"
		ELSE r."ClosedOn"
	END
FROM
	"CoarseDayPairRow" r
UNION ALL
SELECT
	CAST(TIMESTAMP '2026-06-01 10:00:00.000000' AS timestamp)
FROM
	"CoarseDayPairRow" r_1

