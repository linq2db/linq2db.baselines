-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.000000'
DECLARE @Budget Int64
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
	:Id,
	:StartedOn,
	:FinishedOn,
	:Budget
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 13:00:00.000000'
DECLARE @Budget Int64
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
	:Id,
	:StartedOn,
	:FinishedOn,
	:Budget
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.000000'
DECLARE @Budget Int64
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
	:Id,
	:StartedOn,
	:FinishedOn,
	:Budget
)

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CAST(Floor(Extract(Day From (CAST(g_1."FinishedOn" AS timestamp) - CAST(g_1."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(g_1."FinishedOn" AS timestamp) - CAST(g_1."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(g_1."FinishedOn" AS timestamp) - CAST(g_1."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(g_1."FinishedOn" AS timestamp) - CAST(g_1."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) as "Key_1"
		FROM
			"BudgetedTaskRow" g_1
	) t1
GROUP BY
	t1."Key_1"
ORDER BY
	t1."Key_1"

