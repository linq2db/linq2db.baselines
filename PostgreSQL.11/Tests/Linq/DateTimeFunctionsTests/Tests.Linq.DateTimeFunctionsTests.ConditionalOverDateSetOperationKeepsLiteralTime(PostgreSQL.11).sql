-- PostgreSQL.11 PostgreSQL
SELECT
	CASE
		WHEN r."Id" > 0 THEN r."OpenedOn"
		ELSE r."ClosedOn"
	END
FROM
	"CoarseDayPairRow" r
UNION ALL
SELECT
	'2026-06-01 10:00:00'::timestamp::TimeStamp
FROM
	"CoarseDayPairRow" r_1

