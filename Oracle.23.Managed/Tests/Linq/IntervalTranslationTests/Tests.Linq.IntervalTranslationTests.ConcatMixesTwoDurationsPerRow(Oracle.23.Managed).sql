-- Oracle.23.Managed Oracle.Managed Oracle12
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Source",
	t1."First_1",
	t1."Second_1",
	t1."First_2",
	t1."Second_2"
FROM
	(
		SELECT
			CAST(1 AS Int) as "Source",
			r."Budget" as "First_1",
			CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) as "Second_1",
			NULL as "First_2",
			NULL as "Second_2"
		FROM
			"BudgetedTaskRow" r
		UNION ALL
		SELECT
			CAST(2 AS Int) as "Source",
			NULL as "First_1",
			NULL as "Second_1",
			CAST(Floor(Extract(Day From (CAST(r_1."FinishedOn" AS timestamp) - CAST(r_1."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r_1."FinishedOn" AS timestamp) - CAST(r_1."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r_1."FinishedOn" AS timestamp) - CAST(r_1."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r_1."FinishedOn" AS timestamp) - CAST(r_1."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) as "First_2",
			r_1."Budget" as "Second_2"
		FROM
			"BudgetedTaskRow" r_1
	) t1
ORDER BY
	t1."Source"

