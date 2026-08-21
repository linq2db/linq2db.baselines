-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimestampTz -- DateTimeOffset
SET     @StartedOn = '2026-01-01 10:00:00.000000+00:00'::timestamptz
DECLARE @FinishedOn TimestampTz -- DateTimeOffset
SET     @FinishedOn = '2026-01-03 13:04:05.006000+00:00'::timestamptz

INSERT INTO "ZonedEventRow"
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	Trunc(Extract(day From (r."FinishedOn" - r."StartedOn")))::Int,
	Trunc(Extract(hour From (r."FinishedOn" - r."StartedOn")))::Int,
	Trunc(Extract(minute From (r."FinishedOn" - r."StartedOn")))::Int,
	Trunc(Extract(second From (r."FinishedOn" - r."StartedOn")))::Int,
	Floor(Extract(day From (r."FinishedOn" - r."StartedOn")))::BigInt * 864000000000 + Floor(Extract(hour From (r."FinishedOn" - r."StartedOn")))::BigInt * 36000000000 + Floor(Extract(minute From (r."FinishedOn" - r."StartedOn")))::BigInt * 600000000 + Floor(Round(Extract(second From (r."FinishedOn" - r."StartedOn")) * 10000000))::BigInt,
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) / 86400,
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) / 3600,
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) / 60,
	Extract(epoch From (r."FinishedOn" - r."StartedOn")),
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) * 1000
FROM
	"ZonedEventRow" r
LIMIT 2

