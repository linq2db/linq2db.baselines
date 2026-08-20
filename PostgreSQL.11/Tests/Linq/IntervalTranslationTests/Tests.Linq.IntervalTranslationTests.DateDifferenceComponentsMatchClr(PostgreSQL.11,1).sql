-- PostgreSQL.11 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-03 13:30:00'::timestamp

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
	Trunc(Extract(day From (r."FinishedOn" - r."StartedOn")))::Int,
	Trunc(Extract(hour From (r."FinishedOn" - r."StartedOn")))::Int,
	Trunc(Extract(minute From (r."FinishedOn" - r."StartedOn")))::Int,
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) / 3600
FROM
	"EventRow" r
LIMIT 2

