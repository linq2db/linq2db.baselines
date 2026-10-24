-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-06-01 10:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = NULL

INSERT INTO "CoarseNullableEventRow"
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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp -- DateTime2
SET     @StartedOn = '2026-06-01 11:00:00'::timestamp
DECLARE @FinishedOn Timestamp -- DateTime2
SET     @FinishedOn = '2026-06-01 13:00:00'::timestamp

INSERT INTO "CoarseNullableEventRow"
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
	COUNT(*)
FROM
	"CoarseNullableEventRow" r
WHERE
	Coalesce(r."FinishedOn", r."StartedOn") < '2026-06-01 10:00:00.500'::timestamp

-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" r
WHERE
	'2026-06-01 10:00:00.500'::timestamp > Coalesce(r."FinishedOn", r."StartedOn")

-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" r
WHERE
	Coalesce(r."FinishedOn", r."StartedOn") = '2026-06-01 10:00:00.500'::timestamp

