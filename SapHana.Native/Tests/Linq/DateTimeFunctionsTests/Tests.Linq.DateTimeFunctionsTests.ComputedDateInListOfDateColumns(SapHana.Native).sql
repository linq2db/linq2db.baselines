-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN ("r"."OpenedOn")

