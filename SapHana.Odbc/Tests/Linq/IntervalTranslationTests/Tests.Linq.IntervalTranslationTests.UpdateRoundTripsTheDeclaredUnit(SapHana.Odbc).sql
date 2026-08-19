-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 4567

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
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 19260
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 192600000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 4567
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"DurationRow" "t1"
SET
	"InSeconds" = ?,
	"InTicks" = ?,
	"Undeclared" = ?,
	"UndeclaredSeconds" = ?
WHERE
	"t1"."Id" = ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 45670000000

UPDATE
	"DurationRow" "r"
SET
	"InSeconds" = ?,
	"InTicks" = ?
WHERE
	"r"."Id" = 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
LIMIT 2

