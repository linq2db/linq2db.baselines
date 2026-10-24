-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000000'
DECLARE @Budget BigInt -- Int64
SET     @Budget = 10800

INSERT INTO "BudgetedTaskRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Budget"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 12:00:00.0000000'
DECLARE @Budget BigInt -- Int64
SET     @Budget = 10800

INSERT INTO "BudgetedTaskRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Budget"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 13:00:00.0000000'
DECLARE @Budget BigInt -- Int64
SET     @Budget = 10800

INSERT INTO "BudgetedTaskRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Budget"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 72000000000

SELECT
	"r"."Id"
FROM
	"BudgetedTaskRow" "r"
WHERE
	Nano100_Between("r"."StartedOn", "r"."FinishedOn") > ?
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"BudgetedTaskRow" "r"
WHERE
	Nano100_Between("r"."StartedOn", "r"."FinishedOn") > 72000000000
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"BudgetedTaskRow" "r"
WHERE
	Nano100_Between("r"."StartedOn", "r"."FinishedOn") > 0
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 0

SELECT
	"r"."Id"
FROM
	"BudgetedTaskRow" "r"
WHERE
	Nano100_Between("r"."StartedOn", "r"."FinishedOn") > ?
ORDER BY
	"r"."Id"

