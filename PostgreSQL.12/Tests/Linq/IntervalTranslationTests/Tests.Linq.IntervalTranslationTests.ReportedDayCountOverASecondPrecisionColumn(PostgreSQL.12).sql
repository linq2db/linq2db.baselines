-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-06-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-06-01 10:00:00'::timestamp
DECLARE @OpenedOn Date
SET     @OpenedOn = '2026-06-01'::date
DECLARE @ClosedOn Date
SET     @ClosedOn = '2026-06-01'::date

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn,
	:OpenedOn,
	:ClosedOn
)

-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-05-25 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-05-25 10:00:00'::timestamp
DECLARE @OpenedOn Date
SET     @OpenedOn = '2026-05-25'::date
DECLARE @ClosedOn Date
SET     @ClosedOn = '2026-05-25'::date

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn,
	:OpenedOn,
	:ClosedOn
)

-- PostgreSQL.12 PostgreSQL12
SELECT
	Floor(Extract(epoch From (MAX(grp."StartedOn") - MIN(grp."StartedOn"))) / 86400)::Int + 1
FROM
	"CoarseEventRow" grp
LIMIT 2

