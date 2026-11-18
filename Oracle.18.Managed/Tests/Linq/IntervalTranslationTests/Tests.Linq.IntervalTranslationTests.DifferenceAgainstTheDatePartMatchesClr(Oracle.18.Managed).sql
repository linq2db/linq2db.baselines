-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 15:00:00.000000'

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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(TRUNC(r."FinishedOn") AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(TRUNC(r."FinishedOn") AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(TRUNC(r."FinishedOn") AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(TRUNC(r."FinishedOn") AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 36000000000D as "c1"
FROM
	"EventRow" r
FETCH NEXT 2 ROWS ONLY

