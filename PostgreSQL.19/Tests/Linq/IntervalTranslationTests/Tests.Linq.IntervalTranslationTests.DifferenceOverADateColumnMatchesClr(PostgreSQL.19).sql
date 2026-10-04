-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."OpenedOn",
	r."ClosedOn"
FROM
	"CoarseEventRow" r
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
SELECT
	Floor(Extract(day From (r."ClosedOn"::TimeStamp - r."OpenedOn"::TimeStamp)))::BigInt * 864000000000 + Floor(Extract(hour From (r."ClosedOn"::TimeStamp - r."OpenedOn"::TimeStamp)))::BigInt * 36000000000 + Floor(Extract(minute From (r."ClosedOn"::TimeStamp - r."OpenedOn"::TimeStamp)))::BigInt * 600000000 + Floor(Round(Extract(second From (r."ClosedOn"::TimeStamp - r."OpenedOn"::TimeStamp)) * 10000000))::BigInt
FROM
	"CoarseEventRow" r
LIMIT 2

