-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '1970-01-02'::date
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2045-06-05 04:03:02'::timestamp

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
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) / 86400,
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) / 3600,
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) / 60,
	Extract(epoch From (r."FinishedOn" - r."StartedOn")),
	Trunc(Extract(day From (r."FinishedOn" - r."StartedOn")))::Int,
	Trunc(Extract(hour From (r."FinishedOn" - r."StartedOn")))::Int,
	Trunc(Extract(minute From (r."FinishedOn" - r."StartedOn")))::Int
FROM
	"EventRow" r
LIMIT 2

