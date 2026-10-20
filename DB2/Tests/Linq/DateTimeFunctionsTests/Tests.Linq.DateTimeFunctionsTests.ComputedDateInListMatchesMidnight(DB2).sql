-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN (CAST('2026-06-01-00.00.00.000000' AS TIMESTAMP(6)))

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN (CAST('2026-06-01-00.00.00.000000' AS TIMESTAMP(6)))

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	CAST("r"."Value" AS Date) IN (CAST('2026-06-01-00.00.00.000000' AS TIMESTAMP(6)))

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN (CAST('2026-06-01-10.00.00.000000' AS TIMESTAMP(6)))

