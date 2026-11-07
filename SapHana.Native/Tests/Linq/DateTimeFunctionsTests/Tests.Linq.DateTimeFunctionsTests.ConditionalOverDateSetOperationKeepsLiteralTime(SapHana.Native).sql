-- SapHana.Native SapHana
SELECT
	CASE
		WHEN "r"."Id" > 0 THEN "r"."OpenedOn"
		ELSE "r"."ClosedOn"
	END
FROM
	"CoarseDayPairRow" "r"
UNION ALL
SELECT
	CAST(TIMESTAMP '2026-06-01 10:00:00.0000000' AS Timestamp)
FROM
	"CoarseDayPairRow" "r_1"

