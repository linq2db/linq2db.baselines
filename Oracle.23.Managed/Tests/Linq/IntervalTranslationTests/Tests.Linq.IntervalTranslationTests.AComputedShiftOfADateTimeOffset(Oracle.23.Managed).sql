-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStampTZ -- DateTimeOffset
SET     @StartedOn = 01/01/2026 10:00:00 +02:00
DECLARE @FinishedOn TimeStampTZ -- DateTimeOffset
SET     @FinishedOn = 01/01/2026 15:30:00.25 +02:00

INSERT INTO "ZonedEventRow"
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
	r."FinishedOn" + NumToDSInterval(Trunc((CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"ZonedEventRow" r
FETCH NEXT 2 ROWS ONLY

