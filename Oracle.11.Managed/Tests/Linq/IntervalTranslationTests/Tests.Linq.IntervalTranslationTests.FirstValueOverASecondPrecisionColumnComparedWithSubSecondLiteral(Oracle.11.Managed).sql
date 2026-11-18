-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	(
		SELECT
			FIRST_VALUE(r."StartedOn") OVER (ORDER BY r."Id") as "First_1"
		FROM
			"CoarseNullableEventRow" r
	) t1
WHERE
	t1."First_1" < TIMESTAMP '2026-06-01 10:00:00.500000'

