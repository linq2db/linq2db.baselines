-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = -90000
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = -900000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = -900000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = -90000

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
	CAST((CAST("r"."InSeconds" AS BigInt) * 10000000) / 864000000000 AS Integer),
	CAST(MOD((CAST("r"."InSeconds" AS BigInt) * 10000000) / 36000000000, 24) AS Integer),
	CAST(CAST("r"."InSeconds" AS BigInt) * 10000000 AS Double) / 36000000000
FROM
	"DurationRow" "r"
LIMIT 2

