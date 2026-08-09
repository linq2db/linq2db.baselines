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
	CAST("r"."InSeconds" / 86400 AS Integer),
	CAST(MOD("r"."InSeconds" / 3600, 24) AS Integer),
	CAST("r"."InSeconds" AS Double) / 3600
FROM
	"DurationRow" "r"
LIMIT 2

