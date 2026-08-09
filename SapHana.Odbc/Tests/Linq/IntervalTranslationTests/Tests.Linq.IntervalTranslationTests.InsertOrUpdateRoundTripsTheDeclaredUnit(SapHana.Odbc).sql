-- SapHana.Odbc SapHanaOdbc
DECLARE @value BigInt -- Int64
SET     @value = 4567
DECLARE @value BigInt -- Int64
SET     @value = 45670000000

UPDATE
	"DurationRow" "t1"
SET
	"InSeconds" = ?,
	"InTicks" = ?
WHERE
	"t1"."Id" = 1

-- SapHana.Odbc SapHanaOdbc
DECLARE @value BigInt -- Int64
SET     @value = 4567
DECLARE @value BigInt -- Int64
SET     @value = 45670000000
DECLARE @value BigInt -- Int64
SET     @value = 45670000000
DECLARE @value BigInt -- Int64
SET     @value = 4567

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
	1,
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
DECLARE @value BigInt -- Int64
SET     @value = 19260
DECLARE @value BigInt -- Int64
SET     @value = 192600000000

UPDATE
	"DurationRow" "t1"
SET
	"InSeconds" = ?,
	"InTicks" = ?
WHERE
	"t1"."Id" = 1

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

