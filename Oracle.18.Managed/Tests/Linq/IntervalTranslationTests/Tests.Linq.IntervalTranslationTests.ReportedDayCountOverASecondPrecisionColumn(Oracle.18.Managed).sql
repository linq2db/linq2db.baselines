-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 10:00:00.000000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-06-01 00:00:00.000000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-06-01 00:00:00.000000'

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
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-05-25 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-05-25 10:00:00.000000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-05-25 00:00:00.000000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-05-25 00:00:00.000000'

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
	CAST(Floor(CAST(CAST(Floor(Extract(Day From (CAST(MAX(grp."StartedOn") AS timestamp) - CAST(MIN(grp."StartedOn") AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(MAX(grp."StartedOn") AS timestamp) - CAST(MIN(grp."StartedOn") AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(MAX(grp."StartedOn") AS timestamp) - CAST(MIN(grp."StartedOn") AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(MAX(grp."StartedOn") AS timestamp) - CAST(MIN(grp."StartedOn") AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 864000000000D) AS Int) + 1 as "dayCount"
FROM
	"CoarseEventRow" grp
FETCH NEXT 2 ROWS ONLY

