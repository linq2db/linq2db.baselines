-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2025-06-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2025-06-01 10:00:00'::timestamp

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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"EventRow" r
WHERE
	Extract(epoch From (CURRENT_TIMESTAMP - r."StartedOn")) / 86400 > 1

