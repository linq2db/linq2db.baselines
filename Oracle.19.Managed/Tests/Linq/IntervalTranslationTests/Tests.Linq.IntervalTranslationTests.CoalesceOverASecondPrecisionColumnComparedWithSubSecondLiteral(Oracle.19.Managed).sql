-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
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

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 11:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 13:00:00.000000'

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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" r
WHERE
	Coalesce(r."FinishedOn", r."StartedOn") < TIMESTAMP '2026-06-01 10:00:00.500000'

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" r
WHERE
	TIMESTAMP '2026-06-01 10:00:00.500000' > Coalesce(r."FinishedOn", r."StartedOn")

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" r
WHERE
	Coalesce(r."FinishedOn", r."StartedOn") = TIMESTAMP '2026-06-01 10:00:00.500000'

