-- SapHana.Native SapHana
DECLARE @CoarseMidnight Date
SET     @CoarseMidnight = TIMESTAMP '2026-06-01 00:00:00.0000000'

SELECT
	COUNT(*)
FROM
	"ConvertedDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN (:"CoarseMidnight")

