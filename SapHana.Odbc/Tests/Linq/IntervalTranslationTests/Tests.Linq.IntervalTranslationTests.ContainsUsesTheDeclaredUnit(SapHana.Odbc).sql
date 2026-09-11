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
SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InSeconds" IN (900, 2700)
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InTicks" IN (9000000000, 27000000000)
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	CASE
		WHEN "r"."InSeconds" IN (900, 2700) THEN 1
		ELSE 0
	END
FROM
	"DurationRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 1800

SELECT
	CASE
		WHEN ? IN (
			SELECT
				"r"."InSeconds"
			FROM
				"DurationRow" "r"
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

-- SapHana.Odbc SapHanaOdbc
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 54000000000

SELECT
	CASE
		WHEN ? IN (
			SELECT
				"r"."InTicks"
			FROM
				"DurationRow" "r"
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

