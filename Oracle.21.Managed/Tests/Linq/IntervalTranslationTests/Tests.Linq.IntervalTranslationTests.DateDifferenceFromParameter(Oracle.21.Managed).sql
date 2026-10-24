-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-05 00:00:00.000000'

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

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-03 00:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 20:00:00.000000'

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

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.000000'

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	CAST(CAST(Floor(Extract(Day From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (:asOf - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 36000000000D > 24D

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.000000'

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	CAST(CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - :asOf))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - :asOf))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - :asOf))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - :asOf)) * 10000000D)) AS Number(19)) AS Float) / 36000000000D > 24D

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.000000'

SELECT
	r."Id"
FROM
	"EventRow" r
ORDER BY
	CAST(CAST(Floor(Extract(Day From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (:asOf - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 600000000D

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.000000'

SELECT
	CAST(CAST(Floor(Extract(Day From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (:asOf - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 864000000000D as "TotalDays",
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (:asOf - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (:asOf - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int) as "Hours"
FROM
	"EventRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

