-- DB2 DB2.LUW DB2LUW
DECLARE @CoarseMidnight Date(20)
SET     @CoarseMidnight = CAST('2026-06-01-00.00.00.000000' AS TIMESTAMP(6))

SELECT
	COUNT(*)
FROM
	"ConvertedDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN (@CoarseMidnight)

