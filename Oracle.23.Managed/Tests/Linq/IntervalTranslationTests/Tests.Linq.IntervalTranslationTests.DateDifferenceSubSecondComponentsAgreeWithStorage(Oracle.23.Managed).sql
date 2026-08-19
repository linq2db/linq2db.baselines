-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:20:30.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 10:20:30.123456'

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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	r."FinishedOn"
FROM
	"EventRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 10000), 1000) AS Int) as "Milliseconds",
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 10000000), 60) AS Int) as "Seconds"
FROM
	"EventRow" r
FETCH NEXT 2 ROWS ONLY

