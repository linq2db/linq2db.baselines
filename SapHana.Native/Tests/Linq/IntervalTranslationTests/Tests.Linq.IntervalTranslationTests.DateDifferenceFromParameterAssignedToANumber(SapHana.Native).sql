-- SapHana.Native SapHana
DECLARE @asOf TimeStamp -- DateTime2
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000000'

UPDATE
	"MeasuredPeriodRow" "r"
SET
	"Elapsed" = CAST(Nano100_Between("r"."ClosedOn", :"asOf") AS Double) / 864000000000
WHERE
	"r"."Id" = 1

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."ClosedOn",
	"t1"."Elapsed"
FROM
	"MeasuredPeriodRow" "t1"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @asOf TimeStamp -- DateTime2
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000000'

SELECT
	"r"."Id"
FROM
	"MeasuredPeriodRow" "r"
WHERE
	"r"."Elapsed" < CAST(Nano100_Between("r"."ClosedOn", :"asOf") AS Double) / 36000000000

-- SapHana.Native SapHana
DECLARE @asOf TimeStamp -- DateTime2
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000000'

UPDATE
	"MeasuredPeriodRow" "r"
SET
	"Elapsed" = CAST(Nano100_Between(:"asOf", "r"."ClosedOn") AS Double) / 36000000000
WHERE
	"r"."Id" = 1

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."ClosedOn",
	"t1"."Elapsed"
FROM
	"MeasuredPeriodRow" "t1"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @asOf TimeStamp -- DateTime2
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000000'

SELECT
	"r"."Id"
FROM
	"MeasuredPeriodRow" "r"
WHERE
	"r"."Elapsed" < CAST(Nano100_Between(:"asOf", "r"."ClosedOn") AS Double) / 864000000000

