-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 900
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 9000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 900

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
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 1800

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
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 2700
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 27000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 2700

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
DECLARE @p BigInt -- Int64
SET     @p = 1800

SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InSeconds" > ?
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p BigInt -- Int64
SET     @p = 18000000000

SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InTicks" > ?
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p BigInt -- Int64
SET     @p = 1800
DECLARE @p BigInt -- Int64
SET     @p = 1800

SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InSeconds" = ? AND "r"."InSeconds" = ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	1 = 0

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	1 = 0

