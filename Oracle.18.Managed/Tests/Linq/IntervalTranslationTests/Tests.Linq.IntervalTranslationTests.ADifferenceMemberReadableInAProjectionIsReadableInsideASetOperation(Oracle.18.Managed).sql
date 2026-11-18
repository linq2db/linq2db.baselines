-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 10:00:00.006456'

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
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 10), 1000) AS Int)
FROM
	"EventRow" r

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 10), 1000) AS Int)
FROM
	"EventRow" r
WHERE
	r."Id" > 0
UNION ALL
SELECT
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(r_1."FinishedOn" AS timestamp) - CAST(r_1."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r_1."FinishedOn" AS timestamp) - CAST(r_1."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r_1."FinishedOn" AS timestamp) - CAST(r_1."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r_1."FinishedOn" AS timestamp) - CAST(r_1."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 10), 1000) AS Int)
FROM
	"EventRow" r_1
WHERE
	r_1."Id" <= 0

