-- PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-06-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-06-01 15:00:00'::timestamp

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

-- PostgreSQL.13 PostgreSQL12
SELECT
	Extract(epoch From (r."FinishedOn" - Date_Trunc('day', r."FinishedOn"))) / 3600
FROM
	"EventRow" r
LIMIT 2

