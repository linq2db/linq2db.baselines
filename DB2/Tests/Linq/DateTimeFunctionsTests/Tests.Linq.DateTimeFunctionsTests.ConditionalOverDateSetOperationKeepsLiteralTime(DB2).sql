-- DB2 DB2.LUW DB2LUW
SELECT
	CASE
		WHEN "r"."Id" > 0 THEN "r"."OpenedOn"
		ELSE "r"."ClosedOn"
	END
FROM
	"CoarseDayPairRow" "r"
UNION ALL
SELECT
	CAST(CAST('2026-06-01-10.00.00.000000' AS TIMESTAMP(6)) AS timestamp)
FROM
	"CoarseDayPairRow" "r_1"

