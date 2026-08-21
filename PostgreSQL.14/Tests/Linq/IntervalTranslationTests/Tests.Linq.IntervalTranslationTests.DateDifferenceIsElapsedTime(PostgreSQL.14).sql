-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-01-01 10:59:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-01-01 11:01:00'::timestamp

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Extract(epoch From (r."FinishedOn" - r."StartedOn")) / 60,
	Trunc(Extract(minute From (r."FinishedOn" - r."StartedOn")))::Int
FROM
	"EventRow" r
LIMIT 2

