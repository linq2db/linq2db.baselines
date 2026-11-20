-- PostgreSQL.11 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '1970-01-02'::date
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '1970-02-03 04:05:06.780'::timestamp

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

-- PostgreSQL.11 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '1970-01-02'::date
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2045-06-05 04:03:02.340'::timestamp

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

-- PostgreSQL.11 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '1970-01-02'::date
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '1970-01-02 00:02:05.250'::timestamp

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

-- PostgreSQL.11 PostgreSQL
SELECT
	r."StartedOn",
	r."FinishedOn"
FROM
	"EventRow" r
ORDER BY
	r."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(((Floor(Extract(day From (r."FinishedOn" - r."StartedOn")))::BigInt * 864000000000 + (Floor(Extract(hour From (r."FinishedOn" - r."StartedOn")))::BigInt * 36000000000 + (Floor(Extract(minute From (r."FinishedOn" - r."StartedOn")))::BigInt * 600000000 + Floor(Round(Extract(second From (r."FinishedOn" - r."StartedOn")) * 10000000))::BigInt))) / 10000)::decimal % 1000)::BigInt::Int
FROM
	"EventRow" r
ORDER BY
	r."Id"

