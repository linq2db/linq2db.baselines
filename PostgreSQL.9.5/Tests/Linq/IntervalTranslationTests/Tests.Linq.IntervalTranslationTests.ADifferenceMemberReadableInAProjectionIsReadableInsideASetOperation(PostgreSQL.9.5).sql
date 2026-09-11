-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-01 10:00:00.006'::timestamp

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

-- PostgreSQL.9.5 PostgreSQL
SELECT
	Floor((((Floor(Extract(day From (r."FinishedOn" - r."StartedOn")))::BigInt * 864000000000 + Floor(Extract(hour From (r."FinishedOn" - r."StartedOn")))::BigInt * 36000000000 + Floor(Extract(minute From (r."FinishedOn" - r."StartedOn")))::BigInt * 600000000 + Floor(Round(Extract(second From (r."FinishedOn" - r."StartedOn")) * 10000000))::BigInt) / 10)::decimal % 1000)::decimal)::Int
FROM
	"EventRow" r

-- PostgreSQL.9.5 PostgreSQL
SELECT
	Floor((((Floor(Extract(day From (r."FinishedOn" - r."StartedOn")))::BigInt * 864000000000 + Floor(Extract(hour From (r."FinishedOn" - r."StartedOn")))::BigInt * 36000000000 + Floor(Extract(minute From (r."FinishedOn" - r."StartedOn")))::BigInt * 600000000 + Floor(Round(Extract(second From (r."FinishedOn" - r."StartedOn")) * 10000000))::BigInt) / 10)::decimal % 1000)::decimal)::Int
FROM
	"EventRow" r
WHERE
	r."Id" > 0
UNION ALL
SELECT
	Floor((((Floor(Extract(day From (r_1."FinishedOn" - r_1."StartedOn")))::BigInt * 864000000000 + Floor(Extract(hour From (r_1."FinishedOn" - r_1."StartedOn")))::BigInt * 36000000000 + Floor(Extract(minute From (r_1."FinishedOn" - r_1."StartedOn")))::BigInt * 600000000 + Floor(Round(Extract(second From (r_1."FinishedOn" - r_1."StartedOn")) * 10000000))::BigInt) / 10)::decimal % 1000)::decimal)::Int
FROM
	"EventRow" r_1
WHERE
	r_1."Id" <= 0

