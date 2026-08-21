-- PostgreSQL.19 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:20:30'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-01 10:20:30.123'::timestamp

INSERT INTO "EventRow"
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."FinishedOn"
FROM
	"EventRow" r
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
SELECT
	Floor((((Floor(Extract(day From (r."FinishedOn" - r."StartedOn")))::BigInt * 864000000000 + Floor(Extract(hour From (r."FinishedOn" - r."StartedOn")))::BigInt * 36000000000 + Floor(Extract(minute From (r."FinishedOn" - r."StartedOn")))::BigInt * 600000000 + Floor(Round(Extract(second From (r."FinishedOn" - r."StartedOn")) * 10000000))::BigInt) / 10000)::decimal % 1000)::decimal)::Int,
	Trunc(Extract(second From (r."FinishedOn" - r."StartedOn")))::Int
FROM
	"EventRow" r
LIMIT 2

