-- PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-06-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-06-12 10:00:00'::timestamp
DECLARE @OpenedOn Date
SET     @OpenedOn = '2026-06-01'::date
DECLARE @ClosedOn Date
SET     @ClosedOn = '2026-06-12'::date

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn,
	:OpenedOn,
	:ClosedOn
)

-- PostgreSQL.13 PostgreSQL12
SELECT
	'2026-06-20'::date + (r."ClosedOn"::TimeStamp - r."OpenedOn"::TimeStamp)
FROM
	"CoarseEventRow" r
LIMIT 2

