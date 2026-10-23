-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN ("r"."OpenedOn")

