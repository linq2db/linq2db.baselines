-- PostgreSQL.11 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-06-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
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

-- PostgreSQL.11 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-06-01 11:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-06-01 13:00:00'::timestamp

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

-- PostgreSQL.11 PostgreSQL
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
	t1."Lag" < '2026-06-01 10:00:00.500'::timestamp

