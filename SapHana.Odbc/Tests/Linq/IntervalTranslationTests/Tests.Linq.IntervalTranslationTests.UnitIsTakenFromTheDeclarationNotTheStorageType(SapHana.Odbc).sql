-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 10800
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 108000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 108000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 10800

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(CAST("r"."InSeconds" AS BigInt) * 10000000 AS Double) / 36000000000,
	CAST(CAST("r"."InTicks" AS BigInt) AS Double) / 36000000000
FROM
	"DurationRow" "r"
LIMIT 2

