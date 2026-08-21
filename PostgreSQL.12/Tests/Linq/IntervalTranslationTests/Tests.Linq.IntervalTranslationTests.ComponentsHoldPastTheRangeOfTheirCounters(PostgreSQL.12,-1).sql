-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2045-06-05 04:03:02'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '1970-01-02'::date

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

-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '1970-01-02'::date
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '1970-01-02 00:02:05'::timestamp

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

-- PostgreSQL.12 PostgreSQL12
SELECT
	Trunc(Extract(hour From (r."FinishedOn" - r."StartedOn")))::Int
FROM
	"EventRow" r
ORDER BY
	r."Id"

-- PostgreSQL.12 PostgreSQL12
SELECT
	Trunc(Extract(minute From (r."FinishedOn" - r."StartedOn")))::Int
FROM
	"EventRow" r
ORDER BY
	r."Id"

-- PostgreSQL.12 PostgreSQL12
SELECT
	Trunc(Extract(second From (r."FinishedOn" - r."StartedOn")))::Int
FROM
	"EventRow" r
ORDER BY
	r."Id"

