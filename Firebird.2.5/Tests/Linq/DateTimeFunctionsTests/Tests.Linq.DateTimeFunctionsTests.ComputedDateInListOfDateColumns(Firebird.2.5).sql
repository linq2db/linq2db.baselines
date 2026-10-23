-- Firebird.2.5 Firebird
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN ("r"."OpenedOn")

