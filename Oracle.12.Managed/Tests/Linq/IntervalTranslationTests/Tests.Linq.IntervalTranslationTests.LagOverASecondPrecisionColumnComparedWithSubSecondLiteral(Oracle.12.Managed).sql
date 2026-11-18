-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = NULL

INSERT INTO "CoarseNullableEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn
)

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 11:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 13:00:00.000000'

INSERT INTO "CoarseNullableEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn
)

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	(
		SELECT
			LAG(r."StartedOn", 1, r."StartedOn") OVER (ORDER BY r."Id") as "Lag"
		FROM
			"CoarseNullableEventRow" r
	) t1
WHERE
	t1."Lag" < TIMESTAMP '2026-06-01 10:00:00.500000'

