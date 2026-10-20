-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	(
		SELECT
			FIRST_VALUE(r."StartedOn") OVER (ORDER BY r."Id" ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as "First_1"
		FROM
			"CoarseNullableEventRow" r
	) t1
WHERE
	t1."First_1" < '2026-06-01 10:00:00.500'::timestamp

