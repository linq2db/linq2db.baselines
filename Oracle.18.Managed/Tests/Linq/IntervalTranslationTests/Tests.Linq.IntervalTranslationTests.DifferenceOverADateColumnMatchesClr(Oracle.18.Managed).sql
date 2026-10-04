-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-12 10:00:00.000000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-06-01 00:00:00.000000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-06-12 00:00:00.000000'

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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."OpenedOn",
	r."ClosedOn"
FROM
	"CoarseEventRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CAST(Floor(Extract(Day From (CAST(r."ClosedOn" AS timestamp) - CAST(r."OpenedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."ClosedOn" AS timestamp) - CAST(r."OpenedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."ClosedOn" AS timestamp) - CAST(r."OpenedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."ClosedOn" AS timestamp) - CAST(r."OpenedOn" AS timestamp))) * 10000000D)) AS Number(19)) as "c1"
FROM
	"CoarseEventRow" r
FETCH NEXT 2 ROWS ONLY

