-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN (TIMESTAMP '2026-06-01 00:00:00.0000000')

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN (TIMESTAMP '2026-06-01 00:00:00.0000000')

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	CAST("r"."Value" AS Date) IN (TIMESTAMP '2026-06-01 00:00:00.0000000')

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" "r"
WHERE
	Coalesce("r"."ClosedOn", "r"."OpenedOn") IN (TIMESTAMP '2026-06-01 10:00:00.0000000')

