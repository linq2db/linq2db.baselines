-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimestampTz -- DateTimeOffset
SET     @StartedOn = '2026-01-01 10:00:00.000000+00:00'::timestamptz
DECLARE @FinishedOn TimestampTz -- DateTimeOffset
SET     @FinishedOn = '2026-01-01 10:00:00.006456+00:00'::timestamptz

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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."StartedOn",
	r."FinishedOn"
FROM
	"ZonedEventRow" r
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor((((Floor(Extract(day From (r."FinishedOn" - r."StartedOn")))::BigInt * 864000000000 + Floor(Extract(hour From (r."FinishedOn" - r."StartedOn")))::BigInt * 36000000000 + Floor(Extract(minute From (r."FinishedOn" - r."StartedOn")))::BigInt * 600000000 + Floor(Round(Extract(second From (r."FinishedOn" - r."StartedOn")) * 10000000))::BigInt) / 10)::decimal % 1000)::decimal)::Int,
	(((Floor(Extract(day From (r."FinishedOn" - r."StartedOn")))::BigInt * 864000000000 + Floor(Extract(hour From (r."FinishedOn" - r."StartedOn")))::BigInt * 36000000000 + Floor(Extract(minute From (r."FinishedOn" - r."StartedOn")))::BigInt * 600000000 + Floor(Round(Extract(second From (r."FinishedOn" - r."StartedOn")) * 10000000))::BigInt)::decimal % 10)::decimal * 100)::Int,
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) * 1000000,
	(Floor(Extract(day From (r."FinishedOn" - r."StartedOn")))::BigInt * 864000000000 + Floor(Extract(hour From (r."FinishedOn" - r."StartedOn")))::BigInt * 36000000000 + Floor(Extract(minute From (r."FinishedOn" - r."StartedOn")))::BigInt * 600000000 + Floor(Round(Extract(second From (r."FinishedOn" - r."StartedOn")) * 10000000))::BigInt)::Float * 100
FROM
	"ZonedEventRow" r
LIMIT 2

