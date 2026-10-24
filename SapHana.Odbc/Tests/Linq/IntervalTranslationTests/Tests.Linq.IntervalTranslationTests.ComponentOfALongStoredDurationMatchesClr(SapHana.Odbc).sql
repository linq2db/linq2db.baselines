-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 3000000005
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 30000000050000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 30000000050000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 3000000005

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
	CAST(MOD("r"."InSeconds" / 60, 60) AS Integer),
	CAST(MOD("r"."InSeconds", 60) AS Integer)
FROM
	"DurationRow" "r"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @Seconds Int -- Int32
SET     @Seconds = 5

SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	CAST(MOD("r"."InSeconds", 60) AS Integer) = ?

