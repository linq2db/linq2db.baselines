-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
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

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			MIN(CAST(Floor(Extract(Day From (CAST(t2."FinishedOn" AS timestamp) - CAST(t2."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(t2."FinishedOn" AS timestamp) - CAST(t2."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(t2."FinishedOn" AS timestamp) - CAST(t2."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(t2."FinishedOn" AS timestamp) - CAST(t2."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)))
		FROM
			"BudgetedTaskRow" t2
	) as "Min_1",
	(
		SELECT
			MAX(CAST(Floor(Extract(Day From (CAST(t3."FinishedOn" AS timestamp) - CAST(t3."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(t3."FinishedOn" AS timestamp) - CAST(t3."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(t3."FinishedOn" AS timestamp) - CAST(t3."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(t3."FinishedOn" AS timestamp) - CAST(t3."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)))
		FROM
			"BudgetedTaskRow" t3
	) as "Max_1",
	Coalesce((
		SELECT
			SUM(CAST(CAST(Floor(Extract(Day From (CAST(t4."FinishedOn" AS timestamp) - CAST(t4."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(t4."FinishedOn" AS timestamp) - CAST(t4."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(t4."FinishedOn" AS timestamp) - CAST(t4."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(t4."FinishedOn" AS timestamp) - CAST(t4."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 600000000D)
		FROM
			"BudgetedTaskRow" t4
	), 0D) as "TotalMin"
FROM
	"BudgetedTaskRow" t1
FETCH NEXT 1 ROWS ONLY

